// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Game _$$_GameFromJson(Map<String, dynamic> json) => _$_Game(
      id: json['id'] as String,
      name: json['name'] as String,
      cover: json['cover'] as String,
      rating: (json['rating'] as num).toDouble(),
      ratingCount: json['ratingCount'] as int,
    );

Map<String, dynamic> _$$_GameToJson(_$_Game instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'cover': instance.cover,
      'rating': instance.rating,
      'ratingCount': instance.ratingCount,
    };
