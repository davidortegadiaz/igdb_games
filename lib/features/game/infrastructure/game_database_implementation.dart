import 'package:igdb_games/features/database/database/database.dart';
import 'package:igdb_games/features/game/domain/models/artwork.dart';
import 'package:igdb_games/features/game/domain/models/game.dart';
import 'package:igdb_games/features/game/domain/models/video.dart';
import 'package:igdb_games/features/game/domain/models/genre.dart';
import 'package:igdb_games/features/game/domain/repositories/game_databse.dart';

class GameDatabaseImplement implements GameDataBase {
  @override
  Future<void> saveGames(List<Game> games) async {
    final _instance = await _getDatabaseInstance;
    _instance.gameDao.insertGames(games);
  }

  @override
  Future<void> saveArtworks(List<Artwork> artworks) async {
    final _instance = await _getDatabaseInstance;
    _instance.artworkDao.insertArtworks(artworks);
  }

  @override
  Future<void> saveGenres(List<Genre> genres) async {
    final _instance = await _getDatabaseInstance;
    _instance.genreDao.insertGenres(genres);
  }

  @override
  Future<void> saveVideos(List<Video> videos) async {
    final _instance = await _getDatabaseInstance;
    _instance.videoDao.insertVideos(videos);
  }

  Future<AppDatabase> get _getDatabaseInstance async =>
      await $FloorAppDatabase.databaseBuilder('app_database.db').build();
}
