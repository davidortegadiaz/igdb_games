import 'package:floor/floor.dart';

@entity
class Genre {
  @primaryKey
  final int id;
  final String name;
  Genre({required this.id, required this.name});

  factory Genre.fromJson(Map<String, dynamic> json) => Genre(
        id: json['id'] as int,
        name: json['name'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
      };

  @override
  bool operator ==(Object other) => identical(this, other) || other is Genre && id == other.id && name == other.name;

  @override
  int get hashCode => id.hashCode ^ name.hashCode;
}
