import 'package:floor/floor.dart';

import 'package:igdb_games/features/game/domain/models/game.dart';

@dao
abstract class GameDao {
  @Query('SELECT * FROM Game')
  Future<List<Game>> findAllGames();

  @insert
  Future<void> insertGames(List<Game> games);
}
