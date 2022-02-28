import 'package:igdb_games/features/game/domain/models/game.dart';

abstract class GameState {}

class GameInitialState extends GameState {}

class GameErrorState extends GameState {}

class GameLoadingState extends GameState {}

class GameSuccessState extends GameState {
  final List<Game>? gameList;
  GameSuccessState({this.gameList = const []});
}
