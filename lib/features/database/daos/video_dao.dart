import 'package:floor/floor.dart';
import 'package:igdb_games/features/game/domain/models/video.dart';

@dao
abstract class VideoDao {
  @Query('SELECT * FROM Video')
  Future<List<Video>> findAllVideos();

  @insert
  Future<void> insertVideos(List<Video> videos);
}
