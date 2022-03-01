import 'package:floor/floor.dart';

@entity
class Video {
  @primaryKey
  final int id;
  final String videoId;
  Video({required this.id, required this.videoId});

  factory Video.fromJson(Map<String, dynamic> json) => Video(
        id: json['id'] as int,
        videoId: json['video_id'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'video_id': videoId,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is Video && id == other.id && videoId == other.videoId;

  @override
  int get hashCode => id.hashCode ^ videoId.hashCode;
}
