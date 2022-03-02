// ignore: unused_import
import 'dart:async';
import 'package:floor/floor.dart';
import 'package:igdb_games/features/database/daos/artwork_dao.dart';
import 'package:igdb_games/features/database/daos/game_dao.dart';
import 'package:igdb_games/features/database/daos/genre_dao.dart';
import 'package:igdb_games/features/database/daos/video_dao.dart';
import 'package:igdb_games/features/game/domain/models/artwork.dart';
import 'package:igdb_games/features/game/domain/models/genre.dart';
import 'package:igdb_games/features/game/domain/models/video.dart';
// ignore: unused_import
import 'package:sqflite/sqflite.dart' as sqflite;

import 'package:igdb_games/features/game/domain/models/game.dart';

part 'database.g.dart';

@Database(version: 1, entities: [Game, Artwork, Video, Genre])
abstract class AppDatabase extends FloorDatabase {
  GameDao get gameDao;
  ArtworkDao get artworkDao;
  GenreDao get genreDao;
  VideoDao get videoDao;
}
