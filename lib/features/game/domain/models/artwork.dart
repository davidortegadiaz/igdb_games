import 'package:floor/floor.dart';

@entity
class Artwork {
  @primaryKey
  final int id;
  final String url;
  Artwork({required this.id, required this.url});

  factory Artwork.fromJson(Map<String, dynamic> json) => Artwork(
        id: json['id'] as int,
        url: json['url'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'url': url,
      };

  @override
  bool operator ==(Object other) => identical(this, other) || other is Artwork && id == other.id && url == other.url;

  @override
  int get hashCode => id.hashCode ^ url.hashCode;
}
