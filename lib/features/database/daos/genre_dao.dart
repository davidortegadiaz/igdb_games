import 'package:floor/floor.dart';
import 'package:igdb_games/features/game/domain/models/genre.dart';

@dao
abstract class GenreDao {
  @Query('SELECT * FROM Genre')
  Future<List<Genre>> findAllGenres();

  @insert
  Future<void> insertGenres(List<Genre> genres);
}
