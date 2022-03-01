import 'package:floor/floor.dart';
import 'package:igdb_games/features/game/domain/models/artwork.dart';
import 'package:igdb_games/features/game/domain/models/genre.dart';
import 'package:igdb_games/features/game/domain/models/video.dart';

@entity
class Game {
  @primaryKey
  int id;
  String name;
  List<Artwork> artworks;
  double rating;
  int ratingCount;
  List<Genre> genres;
  String storyline;
  List<Video> videos;

  Game({
    required this.id,
    required this.name,
    required this.artworks,
    required this.rating,
    required this.ratingCount,
    required this.genres,
    required this.storyline,
    required this.videos,
  });
}
