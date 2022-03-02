import 'dart:convert';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:igdb_games/features/game/domain/bloc/game_event.dart';
import 'package:igdb_games/features/game/domain/bloc/game_state.dart';
import 'package:igdb_games/features/game/domain/models/game.dart';
import 'package:igdb_games/features/game/domain/repositories/game_repository.dart';
import 'package:igdb_games/features/game/domain/repositories/local_storage_service.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  final GameRepository gameRepository;
  final LocalStorageService localStorageService;
  GameBloc({required this.gameRepository, required this.localStorageService}) : super(const GameInitialState()) {
    on<FetchGamesEvent>((_, emit) => _fetchGames(emit));
  }

  Future<void> _fetchGames(Emitter<GameState> emit) async {
    emit(const GameLoadingState());
    try {
      final Response response = await gameRepository.fetchGames();
      final List<Game> list = (response.data as List).map((e) => Game.fromJson(e)).toList();
      emit(GameSuccessState(gameList: list));
      await localStorageService.saveData(json.encode(response.data));
    } catch (e) {
      final DioError error = e as DioError;
      if (error.type == DioErrorType.connectTimeout) {
        final _stringData = await localStorageService.getData();
        if (_stringData != null) {
          final List<Game> list = (json.decode(_stringData) as List).map((e) => Game.fromJson(e)).toList();
          emit(GameSuccessState(gameList: list));
        } else {
          emit(const GameErrorState());
        }
      } else {
        log(e.toString());
        emit(const GameErrorState());
      }
    }
  }
}
