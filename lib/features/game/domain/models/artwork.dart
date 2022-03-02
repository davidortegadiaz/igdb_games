import 'package:floor/floor.dart';
import 'package:igdb_games/features/game/domain/models/game.dart';

@Entity(
  foreignKeys: [
    ForeignKey(
      childColumns: ['game'],
      parentColumns: ['id'],
      entity: Game,
      onUpdate: ForeignKeyAction.cascade,
      onDelete: ForeignKeyAction.cascade,
    )
  ],
)
class Artwork {
  @primaryKey
  final int id;
  final String url;
  final int game;
  Artwork({
    required this.id,
    required this.url,
    required this.game,
  });

  factory Artwork.fromJson(Map<String, dynamic> json) => Artwork(
        id: json['id'] as int,
        url: json['url'],
        game: json['game'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'url': url,
        'game': game,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is Artwork && id == other.id && url == other.url && game == other.game;

  @override
  int get hashCode => id.hashCode ^ url.hashCode ^ game.hashCode;
}
