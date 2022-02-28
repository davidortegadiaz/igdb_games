import 'package:freezed_annotation/freezed_annotation.dart';

part 'game.g.dart';
part 'game.freezed.dart';

@freezed
class Game with _$Game {
  factory Game({
    required String id,
    required String name,
    required String cover,
    required double rating,
    required int ratingCount,
  }) = _Game;

  factory Game.fromJson(Map<String, dynamic> json) => _$GameFromJson(json);
}
