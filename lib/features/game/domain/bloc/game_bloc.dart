import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:igdb_games/features/game/domain/bloc/game_event.dart';
import 'package:igdb_games/features/game/domain/bloc/game_state.dart';
import 'package:igdb_games/features/game/domain/models/game.dart';
import 'package:igdb_games/features/game/domain/repositories/game_repository.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  final GameRepository gameRepository;
  GameBloc({required this.gameRepository}) : super(GameInitialState()) {
    on<FetchGamesEvent>((_, emit) => _fetchGames(emit));
  }

  Future<void> _fetchGames(Emitter<GameState> emit) async {
    emit(GameLoadingState());
    try {
      final Response response = await gameRepository.fetchGames();
      final List<Game> list = (response.data as List).map((e) => Game.fromJson(e)).toList();
      emit(GameSuccessState(gameList: list));
    } catch (e) {
      log(e.toString());
      emit(GameErrorState());
    }
  }
}