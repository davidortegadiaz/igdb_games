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
class Genre {
  @primaryKey
  final int id;
  final String name;
  final int game;
  Genre({required this.id, required this.name, required this.game});

  factory Genre.fromJson(Map<String, dynamic> json) => Genre(
        id: json['id'] as int,
        name: json['name'],
        game: json['game'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'game': game,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is Genre && id == other.id && name == other.name && game == other.game;

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ game.hashCode;
}
