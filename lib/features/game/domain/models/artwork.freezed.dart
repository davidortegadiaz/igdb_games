// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'artwork.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Artwork _$ArtworkFromJson(Map<String, dynamic> json) {
  return _Artwork.fromJson(json);
}

/// @nodoc
class _$ArtworkTearOff {
  const _$ArtworkTearOff();

  _Artwork call({required int id, required String url}) {
    return _Artwork(
      id: id,
      url: url,
    );
  }

  Artwork fromJson(Map<String, Object?> json) {
    return Artwork.fromJson(json);
  }
}

/// @nodoc
const $Artwork = _$ArtworkTearOff();

/// @nodoc
mixin _$Artwork {
  int get id => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArtworkCopyWith<Artwork> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtworkCopyWith<$Res> {
  factory $ArtworkCopyWith(Artwork value, $Res Function(Artwork) then) =
      _$ArtworkCopyWithImpl<$Res>;
  $Res call({int id, String url});
}

/// @nodoc
class _$ArtworkCopyWithImpl<$Res> implements $ArtworkCopyWith<$Res> {
  _$ArtworkCopyWithImpl(this._value, this._then);

  final Artwork _value;
  // ignore: unused_field
  final $Res Function(Artwork) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ArtworkCopyWith<$Res> implements $ArtworkCopyWith<$Res> {
  factory _$ArtworkCopyWith(_Artwork value, $Res Function(_Artwork) then) =
      __$ArtworkCopyWithImpl<$Res>;
  @override
  $Res call({int id, String url});
}

/// @nodoc
class __$ArtworkCopyWithImpl<$Res> extends _$ArtworkCopyWithImpl<$Res>
    implements _$ArtworkCopyWith<$Res> {
  __$ArtworkCopyWithImpl(_Artwork _value, $Res Function(_Artwork) _then)
      : super(_value, (v) => _then(v as _Artwork));

  @override
  _Artwork get _value => super._value as _Artwork;

  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
  }) {
    return _then(_Artwork(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Artwork implements _Artwork {
  _$_Artwork({required this.id, required this.url});

  factory _$_Artwork.fromJson(Map<String, dynamic> json) =>
      _$$_ArtworkFromJson(json);

  @override
  final int id;
  @override
  final String url;

  @override
  String toString() {
    return 'Artwork(id: $id, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Artwork &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$ArtworkCopyWith<_Artwork> get copyWith =>
      __$ArtworkCopyWithImpl<_Artwork>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArtworkToJson(this);
  }
}

abstract class _Artwork implements Artwork {
  factory _Artwork({required int id, required String url}) = _$_Artwork;

  factory _Artwork.fromJson(Map<String, dynamic> json) = _$_Artwork.fromJson;

  @override
  int get id;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$ArtworkCopyWith<_Artwork> get copyWith =>
      throw _privateConstructorUsedError;
}
