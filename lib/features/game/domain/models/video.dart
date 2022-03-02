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
class Video {
  @primaryKey
  final int id;
  final String videoId;
  final int game;
  Video({
    required this.id,
    @ColumnInfo(name: 'video_id') required this.videoId,
    required this.game,
  });

  factory Video.fromJson(Map<String, dynamic> json) => Video(
        id: json['id'] as int,
        videoId: json['video_id'],
        game: json['game'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'video_id': videoId,
        'game': game,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is Video && id == other.id && videoId == other.videoId && game == other.game;

  @override
  int get hashCode => id.hashCode ^ videoId.hashCode ^ game.hashCode;
}
