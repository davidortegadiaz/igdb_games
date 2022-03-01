import 'package:floor/floor.dart';
import 'package:igdb_games/features/game/domain/daos/game_dao.dart';
import 'package:igdb_games/features/game/domain/models/artwork.dart';
import 'package:igdb_games/features/game/domain/models/game.dart';
import 'package:igdb_games/features/game/domain/models/genre.dart';
import 'package:igdb_games/features/game/domain/models/video.dart';

part 'database.g.dart'; // the generated code will be there

@Database(version: 1, entities: [Game, Artwork, Video, Genre])
abstract class AppDatabase extends FloorDatabase {
  GameDao get gameDao;
}
