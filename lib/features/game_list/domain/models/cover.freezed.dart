// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cover.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Cover _$CoverFromJson(Map<String, dynamic> json) {
  return _Cover.fromJson(json);
}

/// @nodoc
class _$CoverTearOff {
  const _$CoverTearOff();

  _Cover call({required int id, required String url}) {
    return _Cover(
      id: id,
      url: url,
    );
  }

  Cover fromJson(Map<String, Object?> json) {
    return Cover.fromJson(json);
  }
}

/// @nodoc
const $Cover = _$CoverTearOff();

/// @nodoc
mixin _$Cover {
  int get id => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoverCopyWith<Cover> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoverCopyWith<$Res> {
  factory $CoverCopyWith(Cover value, $Res Function(Cover) then) =
      _$CoverCopyWithImpl<$Res>;
  $Res call({int id, String url});
}

/// @nodoc
class _$CoverCopyWithImpl<$Res> implements $CoverCopyWith<$Res> {
  _$CoverCopyWithImpl(this._value, this._then);

  final Cover _value;
  // ignore: unused_field
  final $Res Function(Cover) _then;

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
abstract class _$CoverCopyWith<$Res> implements $CoverCopyWith<$Res> {
  factory _$CoverCopyWith(_Cover value, $Res Function(_Cover) then) =
      __$CoverCopyWithImpl<$Res>;
  @override
  $Res call({int id, String url});
}

/// @nodoc
class __$CoverCopyWithImpl<$Res> extends _$CoverCopyWithImpl<$Res>
    implements _$CoverCopyWith<$Res> {
  __$CoverCopyWithImpl(_Cover _value, $Res Function(_Cover) _then)
      : super(_value, (v) => _then(v as _Cover));

  @override
  _Cover get _value => super._value as _Cover;

  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
  }) {
    return _then(_Cover(
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
class _$_Cover implements _Cover {
  _$_Cover({required this.id, required this.url});

  factory _$_Cover.fromJson(Map<String, dynamic> json) =>
      _$$_CoverFromJson(json);

  @override
  final int id;
  @override
  final String url;

  @override
  String toString() {
    return 'Cover(id: $id, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Cover &&
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
  _$CoverCopyWith<_Cover> get copyWith =>
      __$CoverCopyWithImpl<_Cover>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CoverToJson(this);
  }
}

abstract class _Cover implements Cover {
  factory _Cover({required int id, required String url}) = _$_Cover;

  factory _Cover.fromJson(Map<String, dynamic> json) = _$_Cover.fromJson;

  @override
  int get id;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$CoverCopyWith<_Cover> get copyWith => throw _privateConstructorUsedError;
}
