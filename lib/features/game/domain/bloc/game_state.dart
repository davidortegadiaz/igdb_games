import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:igdb_games/features/game/domain/models/game.dart';

part 'game_state.freezed.dart';

@freezed
class GameState with _$GameState {
  const factory GameState.initial() = GameInitialState;
  const factory GameState.loading() = GameLoadingState;
  const factory GameState.success({List<Game>? gameList}) = GameSuccessState;
  const factory GameState.error() = GameErrorState;
}
