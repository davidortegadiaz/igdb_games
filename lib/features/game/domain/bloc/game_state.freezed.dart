// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'game_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GameStateTearOff {
  const _$GameStateTearOff();

  GameInitialState initial() {
    return const GameInitialState();
  }

  GameLoadingState loading() {
    return const GameLoadingState();
  }

  GameSuccessState success({List<Game>? gameList}) {
    return GameSuccessState(
      gameList: gameList,
    );
  }

  GameErrorState error() {
    return const GameErrorState();
  }
}

/// @nodoc
const $GameState = _$GameStateTearOff();

/// @nodoc
mixin _$GameState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Game>? gameList) success,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Game>? gameList)? success,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Game>? gameList)? success,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameInitialState value) initial,
    required TResult Function(GameLoadingState value) loading,
    required TResult Function(GameSuccessState value) success,
    required TResult Function(GameErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameInitialState value)? initial,
    TResult Function(GameLoadingState value)? loading,
    TResult Function(GameSuccessState value)? success,
    TResult Function(GameErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameInitialState value)? initial,
    TResult Function(GameLoadingState value)? loading,
    TResult Function(GameSuccessState value)? success,
    TResult Function(GameErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameStateCopyWith<$Res> {
  factory $GameStateCopyWith(GameState value, $Res Function(GameState) then) =
      _$GameStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GameStateCopyWithImpl<$Res> implements $GameStateCopyWith<$Res> {
  _$GameStateCopyWithImpl(this._value, this._then);

  final GameState _value;
  // ignore: unused_field
  final $Res Function(GameState) _then;
}

/// @nodoc
abstract class $GameInitialStateCopyWith<$Res> {
  factory $GameInitialStateCopyWith(
          GameInitialState value, $Res Function(GameInitialState) then) =
      _$GameInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GameInitialStateCopyWithImpl<$Res> extends _$GameStateCopyWithImpl<$Res>
    implements $GameInitialStateCopyWith<$Res> {
  _$GameInitialStateCopyWithImpl(
      GameInitialState _value, $Res Function(GameInitialState) _then)
      : super(_value, (v) => _then(v as GameInitialState));

  @override
  GameInitialState get _value => super._value as GameInitialState;
}

/// @nodoc

class _$GameInitialState implements GameInitialState {
  const _$GameInitialState();

  @override
  String toString() {
    return 'GameState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GameInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Game>? gameList) success,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Game>? gameList)? success,
    TResult Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Game>? gameList)? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameInitialState value) initial,
    required TResult Function(GameLoadingState value) loading,
    required TResult Function(GameSuccessState value) success,
    required TResult Function(GameErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameInitialState value)? initial,
    TResult Function(GameLoadingState value)? loading,
    TResult Function(GameSuccessState value)? success,
    TResult Function(GameErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameInitialState value)? initial,
    TResult Function(GameLoadingState value)? loading,
    TResult Function(GameSuccessState value)? success,
    TResult Function(GameErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class GameInitialState implements GameState {
  const factory GameInitialState() = _$GameInitialState;
}

/// @nodoc
abstract class $GameLoadingStateCopyWith<$Res> {
  factory $GameLoadingStateCopyWith(
          GameLoadingState value, $Res Function(GameLoadingState) then) =
      _$GameLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GameLoadingStateCopyWithImpl<$Res> extends _$GameStateCopyWithImpl<$Res>
    implements $GameLoadingStateCopyWith<$Res> {
  _$GameLoadingStateCopyWithImpl(
      GameLoadingState _value, $Res Function(GameLoadingState) _then)
      : super(_value, (v) => _then(v as GameLoadingState));

  @override
  GameLoadingState get _value => super._value as GameLoadingState;
}

/// @nodoc

class _$GameLoadingState implements GameLoadingState {
  const _$GameLoadingState();

  @override
  String toString() {
    return 'GameState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GameLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Game>? gameList) success,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Game>? gameList)? success,
    TResult Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Game>? gameList)? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameInitialState value) initial,
    required TResult Function(GameLoadingState value) loading,
    required TResult Function(GameSuccessState value) success,
    required TResult Function(GameErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameInitialState value)? initial,
    TResult Function(GameLoadingState value)? loading,
    TResult Function(GameSuccessState value)? success,
    TResult Function(GameErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameInitialState value)? initial,
    TResult Function(GameLoadingState value)? loading,
    TResult Function(GameSuccessState value)? success,
    TResult Function(GameErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class GameLoadingState implements GameState {
  const factory GameLoadingState() = _$GameLoadingState;
}

/// @nodoc
abstract class $GameSuccessStateCopyWith<$Res> {
  factory $GameSuccessStateCopyWith(
          GameSuccessState value, $Res Function(GameSuccessState) then) =
      _$GameSuccessStateCopyWithImpl<$Res>;
  $Res call({List<Game>? gameList});
}

/// @nodoc
class _$GameSuccessStateCopyWithImpl<$Res> extends _$GameStateCopyWithImpl<$Res>
    implements $GameSuccessStateCopyWith<$Res> {
  _$GameSuccessStateCopyWithImpl(
      GameSuccessState _value, $Res Function(GameSuccessState) _then)
      : super(_value, (v) => _then(v as GameSuccessState));

  @override
  GameSuccessState get _value => super._value as GameSuccessState;

  @override
  $Res call({
    Object? gameList = freezed,
  }) {
    return _then(GameSuccessState(
      gameList: gameList == freezed
          ? _value.gameList
          : gameList // ignore: cast_nullable_to_non_nullable
              as List<Game>?,
    ));
  }
}

/// @nodoc

class _$GameSuccessState implements GameSuccessState {
  const _$GameSuccessState({this.gameList});

  @override
  final List<Game>? gameList;

  @override
  String toString() {
    return 'GameState.success(gameList: $gameList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GameSuccessState &&
            const DeepCollectionEquality().equals(other.gameList, gameList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(gameList));

  @JsonKey(ignore: true)
  @override
  $GameSuccessStateCopyWith<GameSuccessState> get copyWith =>
      _$GameSuccessStateCopyWithImpl<GameSuccessState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Game>? gameList) success,
    required TResult Function() error,
  }) {
    return success(gameList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Game>? gameList)? success,
    TResult Function()? error,
  }) {
    return success?.call(gameList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Game>? gameList)? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(gameList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameInitialState value) initial,
    required TResult Function(GameLoadingState value) loading,
    required TResult Function(GameSuccessState value) success,
    required TResult Function(GameErrorState value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameInitialState value)? initial,
    TResult Function(GameLoadingState value)? loading,
    TResult Function(GameSuccessState value)? success,
    TResult Function(GameErrorState value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameInitialState value)? initial,
    TResult Function(GameLoadingState value)? loading,
    TResult Function(GameSuccessState value)? success,
    TResult Function(GameErrorState value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class GameSuccessState implements GameState {
  const factory GameSuccessState({List<Game>? gameList}) = _$GameSuccessState;

  List<Game>? get gameList;
  @JsonKey(ignore: true)
  $GameSuccessStateCopyWith<GameSuccessState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameErrorStateCopyWith<$Res> {
  factory $GameErrorStateCopyWith(
          GameErrorState value, $Res Function(GameErrorState) then) =
      _$GameErrorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GameErrorStateCopyWithImpl<$Res> extends _$GameStateCopyWithImpl<$Res>
    implements $GameErrorStateCopyWith<$Res> {
  _$GameErrorStateCopyWithImpl(
      GameErrorState _value, $Res Function(GameErrorState) _then)
      : super(_value, (v) => _then(v as GameErrorState));

  @override
  GameErrorState get _value => super._value as GameErrorState;
}

/// @nodoc

class _$GameErrorState implements GameErrorState {
  const _$GameErrorState();

  @override
  String toString() {
    return 'GameState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GameErrorState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Game>? gameList) success,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Game>? gameList)? success,
    TResult Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Game>? gameList)? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameInitialState value) initial,
    required TResult Function(GameLoadingState value) loading,
    required TResult Function(GameSuccessState value) success,
    required TResult Function(GameErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameInitialState value)? initial,
    TResult Function(GameLoadingState value)? loading,
    TResult Function(GameSuccessState value)? success,
    TResult Function(GameErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameInitialState value)? initial,
    TResult Function(GameLoadingState value)? loading,
    TResult Function(GameSuccessState value)? success,
    TResult Function(GameErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GameErrorState implements GameState {
  const factory GameErrorState() = _$GameErrorState;
}
