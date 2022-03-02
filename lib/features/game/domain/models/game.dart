import 'package:floor/floor.dart';

@entity
class Game {
  @primaryKey
  final int id;
  final String name;
  final double rating;
  final int ratingCount;
  final String storyline;

  Game({
    required this.id,
    required this.name,
    required this.rating,
    @ColumnInfo(name: 'rating_count') required this.ratingCount,
    required this.storyline,
  });
}
