// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'game.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Game _$GameFromJson(Map<String, dynamic> json) {
  return _Game.fromJson(json);
}

/// @nodoc
class _$GameTearOff {
  const _$GameTearOff();

  _Game call(
      {required String id,
      required String name,
      required String cover,
      required double rating,
      required int ratingCount}) {
    return _Game(
      id: id,
      name: name,
      cover: cover,
      rating: rating,
      ratingCount: ratingCount,
    );
  }

  Game fromJson(Map<String, Object?> json) {
    return Game.fromJson(json);
  }
}

/// @nodoc
const $Game = _$GameTearOff();

/// @nodoc
mixin _$Game {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get cover => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  int get ratingCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameCopyWith<Game> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameCopyWith<$Res> {
  factory $GameCopyWith(Game value, $Res Function(Game) then) =
      _$GameCopyWithImpl<$Res>;
  $Res call(
      {String id, String name, String cover, double rating, int ratingCount});
}

/// @nodoc
class _$GameCopyWithImpl<$Res> implements $GameCopyWith<$Res> {
  _$GameCopyWithImpl(this._value, this._then);

  final Game _value;
  // ignore: unused_field
  final $Res Function(Game) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? cover = freezed,
    Object? rating = freezed,
    Object? ratingCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cover: cover == freezed
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      ratingCount: ratingCount == freezed
          ? _value.ratingCount
          : ratingCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$GameCopyWith<$Res> implements $GameCopyWith<$Res> {
  factory _$GameCopyWith(_Game value, $Res Function(_Game) then) =
      __$GameCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id, String name, String cover, double rating, int ratingCount});
}

/// @nodoc
class __$GameCopyWithImpl<$Res> extends _$GameCopyWithImpl<$Res>
    implements _$GameCopyWith<$Res> {
  __$GameCopyWithImpl(_Game _value, $Res Function(_Game) _then)
      : super(_value, (v) => _then(v as _Game));

  @override
  _Game get _value => super._value as _Game;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? cover = freezed,
    Object? rating = freezed,
    Object? ratingCount = freezed,
  }) {
    return _then(_Game(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cover: cover == freezed
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      ratingCount: ratingCount == freezed
          ? _value.ratingCount
          : ratingCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Game implements _Game {
  _$_Game(
      {required this.id,
      required this.name,
      required this.cover,
      required this.rating,
      required this.ratingCount});

  factory _$_Game.fromJson(Map<String, dynamic> json) => _$$_GameFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String cover;
  @override
  final double rating;
  @override
  final int ratingCount;

  @override
  String toString() {
    return 'Game(id: $id, name: $name, cover: $cover, rating: $rating, ratingCount: $ratingCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Game &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.cover, cover) &&
            const DeepCollectionEquality().equals(other.rating, rating) &&
            const DeepCollectionEquality()
                .equals(other.ratingCount, ratingCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(cover),
      const DeepCollectionEquality().hash(rating),
      const DeepCollectionEquality().hash(ratingCount));

  @JsonKey(ignore: true)
  @override
  _$GameCopyWith<_Game> get copyWith =>
      __$GameCopyWithImpl<_Game>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GameToJson(this);
  }
}

abstract class _Game implements Game {
  factory _Game(
      {required String id,
      required String name,
      required String cover,
      required double rating,
      required int ratingCount}) = _$_Game;

  factory _Game.fromJson(Map<String, dynamic> json) = _$_Game.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get cover;
  @override
  double get rating;
  @override
  int get ratingCount;
  @override
  @JsonKey(ignore: true)
  _$GameCopyWith<_Game> get copyWith => throw _privateConstructorUsedError;
}
