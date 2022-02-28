import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:igdb_games/features/game_list/domain/models/cover.dart';
import 'package:igdb_games/features/game_list/domain/models/genre.dart';
import 'package:igdb_games/features/game_list/domain/models/video.dart';

part 'game.g.dart';
part 'game.freezed.dart';

@freezed
class Game with _$Game {
  factory Game({
    int? id,
    String? name,
    Cover? cover,
    double? rating,
    @JsonKey(name: 'rating_count') int? ratingCount,
    List<Genre>? genres,
    String? storyline,
    List<Video>? videos,
  }) = _Game;

  factory Game.fromJson(Map<String, dynamic> json) => _$GameFromJson(json);
}
