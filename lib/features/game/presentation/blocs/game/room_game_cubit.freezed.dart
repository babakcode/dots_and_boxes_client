// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_game_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RoomGameState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<UserPlayer> players, UserPlayer userTurn)
        players,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<UserPlayer> players, UserPlayer userTurn)? players,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<UserPlayer> players, UserPlayer userTurn)? players,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Players value) players,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Players value)? players,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Players value)? players,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomGameStateCopyWith<$Res> {
  factory $RoomGameStateCopyWith(
          RoomGameState value, $Res Function(RoomGameState) then) =
      _$RoomGameStateCopyWithImpl<$Res, RoomGameState>;
}

/// @nodoc
class _$RoomGameStateCopyWithImpl<$Res, $Val extends RoomGameState>
    implements $RoomGameStateCopyWith<$Res> {
  _$RoomGameStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RoomGameState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$RoomGameStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoomGameState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'RoomGameState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<UserPlayer> players, UserPlayer userTurn)
        players,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<UserPlayer> players, UserPlayer userTurn)? players,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<UserPlayer> players, UserPlayer userTurn)? players,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Players value) players,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Players value)? players,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Players value)? players,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RoomGameState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$PlayersImplCopyWith<$Res> {
  factory _$$PlayersImplCopyWith(
          _$PlayersImpl value, $Res Function(_$PlayersImpl) then) =
      __$$PlayersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<UserPlayer> players, UserPlayer userTurn});

  $UserPlayerCopyWith<$Res> get userTurn;
}

/// @nodoc
class __$$PlayersImplCopyWithImpl<$Res>
    extends _$RoomGameStateCopyWithImpl<$Res, _$PlayersImpl>
    implements _$$PlayersImplCopyWith<$Res> {
  __$$PlayersImplCopyWithImpl(
      _$PlayersImpl _value, $Res Function(_$PlayersImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoomGameState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? players = null,
    Object? userTurn = null,
  }) {
    return _then(_$PlayersImpl(
      players: null == players
          ? _value._players
          : players // ignore: cast_nullable_to_non_nullable
              as List<UserPlayer>,
      userTurn: null == userTurn
          ? _value.userTurn
          : userTurn // ignore: cast_nullable_to_non_nullable
              as UserPlayer,
    ));
  }

  /// Create a copy of RoomGameState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserPlayerCopyWith<$Res> get userTurn {
    return $UserPlayerCopyWith<$Res>(_value.userTurn, (value) {
      return _then(_value.copyWith(userTurn: value));
    });
  }
}

/// @nodoc

class _$PlayersImpl implements _Players {
  const _$PlayersImpl(
      {required final List<UserPlayer> players, required this.userTurn})
      : _players = players;

  final List<UserPlayer> _players;
  @override
  List<UserPlayer> get players {
    if (_players is EqualUnmodifiableListView) return _players;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_players);
  }

  @override
  final UserPlayer userTurn;

  @override
  String toString() {
    return 'RoomGameState.players(players: $players, userTurn: $userTurn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayersImpl &&
            const DeepCollectionEquality().equals(other._players, _players) &&
            (identical(other.userTurn, userTurn) ||
                other.userTurn == userTurn));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_players), userTurn);

  /// Create a copy of RoomGameState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayersImplCopyWith<_$PlayersImpl> get copyWith =>
      __$$PlayersImplCopyWithImpl<_$PlayersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<UserPlayer> players, UserPlayer userTurn)
        players,
  }) {
    return players(this.players, userTurn);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<UserPlayer> players, UserPlayer userTurn)? players,
  }) {
    return players?.call(this.players, userTurn);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<UserPlayer> players, UserPlayer userTurn)? players,
    required TResult orElse(),
  }) {
    if (players != null) {
      return players(this.players, userTurn);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Players value) players,
  }) {
    return players(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Players value)? players,
  }) {
    return players?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Players value)? players,
    required TResult orElse(),
  }) {
    if (players != null) {
      return players(this);
    }
    return orElse();
  }
}

abstract class _Players implements RoomGameState {
  const factory _Players(
      {required final List<UserPlayer> players,
      required final UserPlayer userTurn}) = _$PlayersImpl;

  List<UserPlayer> get players;
  UserPlayer get userTurn;

  /// Create a copy of RoomGameState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayersImplCopyWith<_$PlayersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
