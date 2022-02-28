import 'package:igdb_games/features/game_list/domain/models/game.dart';

abstract class GameState {}

class GameInitialState extends GameState {}

class GameErrorState extends GameState {}

class GameLoadingState extends GameState {}

class GameSuccessState extends GameState {
  GameSuccessState({List<Game> gameList = const []});
}
