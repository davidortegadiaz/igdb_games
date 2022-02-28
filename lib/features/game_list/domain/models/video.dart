import 'package:freezed_annotation/freezed_annotation.dart';

part 'video.g.dart';
part 'video.freezed.dart';

@freezed
class Video with _$Video {
  factory Video({
    required int id,
    @JsonKey(name: 'video_id') required String videoId,
  }) = _Video;

  factory Video.fromJson(Map<String, dynamic> json) => _$VideoFromJson(json);
}
