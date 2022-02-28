import 'package:freezed_annotation/freezed_annotation.dart';

part 'artwork.g.dart';
part 'artwork.freezed.dart';

@freezed
class Artwork with _$Artwork {
  factory Artwork({
    required int id,
    required String url,
  }) = _Artwork;

  factory Artwork.fromJson(Map<String, dynamic> json) => _$ArtworkFromJson(json);
}
