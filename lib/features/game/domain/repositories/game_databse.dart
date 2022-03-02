import 'package:igdb_games/features/game/domain/models/artwork.dart';
import 'package:igdb_games/features/game/domain/models/game.dart';
import 'package:igdb_games/features/game/domain/models/genre.dart';
import 'package:igdb_games/features/game/domain/models/video.dart';

abstract class GameDataBase {
  Future<void> saveGames(List<Game> games);
  Future<void> saveGenres(List<Genre> genres);
  Future<void> saveVideos(List<Video> videos);
  Future<void> saveArtworks(List<Artwork> artworks);
}
