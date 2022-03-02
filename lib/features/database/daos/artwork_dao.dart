import 'package:floor/floor.dart';
import 'package:igdb_games/features/game/domain/models/artwork.dart';

@dao
abstract class ArtworkDao {
  @Query('SELECT * FROM Artwork')
  Future<List<Artwork>> findAllArtworks();

  @insert
  Future<void> insertArtworks(List<Artwork> artworks);
}
