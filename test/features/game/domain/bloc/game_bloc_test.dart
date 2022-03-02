import 'dart:convert';

import 'package:bloc_test/bloc_test.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:igdb_games/features/game/domain/bloc/game_bloc.dart';
import 'package:igdb_games/features/game/domain/bloc/game_event.dart';
import 'package:igdb_games/features/game/domain/bloc/game_state.dart';
import 'package:igdb_games/features/game/domain/models/game.dart';
import 'package:igdb_games/features/game/domain/repositories/game_repository.dart';
import 'package:igdb_games/features/game/domain/repositories/local_storage_service.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../fakes/game_data_response.dart';

class MockGameRepository extends Mock implements GameRepository {}

class MockLocalStorageService extends Mock implements LocalStorageService {}

void voidMock() async {}

void main() {
  late GameRepository mockGameRepository;
  late LocalStorageService mockLocalStorageService;
  late GameBloc gameBloc;

  setUp(() {
    mockGameRepository = MockGameRepository();
    mockLocalStorageService = MockLocalStorageService();
    gameBloc = GameBloc(gameRepository: mockGameRepository, localStorageService: mockLocalStorageService);
  });

  blocTest<GameBloc, GameState>(
    'If the API return data, FetchGamesEvent should emit a success state and localStorageService.getData() should not be called',
    build: () {
      when(() => mockGameRepository.fetchGames()).thenAnswer(
        (_) async => Response(
          requestOptions: RequestOptions(path: 'http://testing'),
          statusCode: 200,
          data: [gameDataResponse],
        ),
      );
      when(() => mockLocalStorageService.saveData(json.encode([gameDataResponse]))).thenAnswer((_) async => voidMock());
      return GameBloc(gameRepository: mockGameRepository, localStorageService: mockLocalStorageService);
    },
    act: (bloc) => bloc..add(FetchGamesEvent()),
    expect: () => <GameState>[
      const GameLoadingState(),
      GameSuccessState(gameList: [Game.fromJson(gameDataResponse)]),
    ],
  );

  blocTest<GameBloc, GameState>(
    'If the API doesn not return data for no connection and local storage has data, FetchGamesEvent should emit a success state and localStorageService.getData() should be called',
    build: () {
      when(() => mockGameRepository.fetchGames()).thenThrow(
          DioError(requestOptions: RequestOptions(path: 'http://testing'), type: DioErrorType.connectTimeout));
      when(() => mockLocalStorageService.getData()).thenAnswer((invocation) async => json.encode([gameDataResponse]));
      return GameBloc(gameRepository: mockGameRepository, localStorageService: mockLocalStorageService);
    },
    act: (bloc) => bloc..add(FetchGamesEvent()),
    expect: () => <GameState>[
      const GameLoadingState(),
      GameSuccessState(gameList: [Game.fromJson(gameDataResponse)]),
    ],
  );

  blocTest<GameBloc, GameState>(
    'If the API doesn not return data for no connection and local storage doesnt has data, FetchGamesEvent should emit a error state',
    build: () {
      when(() => mockGameRepository.fetchGames()).thenThrow(
          DioError(requestOptions: RequestOptions(path: 'http://testing'), type: DioErrorType.connectTimeout));
      when(() => mockLocalStorageService.getData()).thenAnswer((invocation) async => null);
      return GameBloc(gameRepository: mockGameRepository, localStorageService: mockLocalStorageService);
    },
    act: (bloc) => bloc..add(FetchGamesEvent()),
    expect: () => <GameState>[
      const GameLoadingState(),
      const GameErrorState(),
    ],
  );
}
