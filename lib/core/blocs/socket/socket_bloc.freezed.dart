// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'socket_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SocketEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initConnect,
    required TResult Function() getPlayerInfo,
    required TResult Function(String level) joinWaitRoom,
    required TResult Function(String level) leaveWaitRoom,
    required TResult Function(String roomId) joinRoom,
    required TResult Function(Point<int> p1, Point<int> p2, String room)
        playerClickLine,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initConnect,
    TResult? Function()? getPlayerInfo,
    TResult? Function(String level)? joinWaitRoom,
    TResult? Function(String level)? leaveWaitRoom,
    TResult? Function(String roomId)? joinRoom,
    TResult? Function(Point<int> p1, Point<int> p2, String room)?
        playerClickLine,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initConnect,
    TResult Function()? getPlayerInfo,
    TResult Function(String level)? joinWaitRoom,
    TResult Function(String level)? leaveWaitRoom,
    TResult Function(String roomId)? joinRoom,
    TResult Function(Point<int> p1, Point<int> p2, String room)?
        playerClickLine,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SocketEventInitConnect value) initConnect,
    required TResult Function(_SocketEventGetPlayerInfo value) getPlayerInfo,
    required TResult Function(_SocketEventJoinWaitRoom value) joinWaitRoom,
    required TResult Function(_SocketEventLeaveWaitRoom value) leaveWaitRoom,
    required TResult Function(_SocketEventJoinRoom value) joinRoom,
    required TResult Function(_SocketEventPlayerClickLine value)
        playerClickLine,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SocketEventInitConnect value)? initConnect,
    TResult? Function(_SocketEventGetPlayerInfo value)? getPlayerInfo,
    TResult? Function(_SocketEventJoinWaitRoom value)? joinWaitRoom,
    TResult? Function(_SocketEventLeaveWaitRoom value)? leaveWaitRoom,
    TResult? Function(_SocketEventJoinRoom value)? joinRoom,
    TResult? Function(_SocketEventPlayerClickLine value)? playerClickLine,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SocketEventInitConnect value)? initConnect,
    TResult Function(_SocketEventGetPlayerInfo value)? getPlayerInfo,
    TResult Function(_SocketEventJoinWaitRoom value)? joinWaitRoom,
    TResult Function(_SocketEventLeaveWaitRoom value)? leaveWaitRoom,
    TResult Function(_SocketEventJoinRoom value)? joinRoom,
    TResult Function(_SocketEventPlayerClickLine value)? playerClickLine,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocketEventCopyWith<$Res> {
  factory $SocketEventCopyWith(
          SocketEvent value, $Res Function(SocketEvent) then) =
      _$SocketEventCopyWithImpl<$Res, SocketEvent>;
}

/// @nodoc
class _$SocketEventCopyWithImpl<$Res, $Val extends SocketEvent>
    implements $SocketEventCopyWith<$Res> {
  _$SocketEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SocketEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SocketEventInitConnectImplCopyWith<$Res> {
  factory _$$SocketEventInitConnectImplCopyWith(
          _$SocketEventInitConnectImpl value,
          $Res Function(_$SocketEventInitConnectImpl) then) =
      __$$SocketEventInitConnectImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SocketEventInitConnectImplCopyWithImpl<$Res>
    extends _$SocketEventCopyWithImpl<$Res, _$SocketEventInitConnectImpl>
    implements _$$SocketEventInitConnectImplCopyWith<$Res> {
  __$$SocketEventInitConnectImplCopyWithImpl(
      _$SocketEventInitConnectImpl _value,
      $Res Function(_$SocketEventInitConnectImpl) _then)
      : super(_value, _then);

  /// Create a copy of SocketEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SocketEventInitConnectImpl implements _SocketEventInitConnect {
  const _$SocketEventInitConnectImpl();

  @override
  String toString() {
    return 'SocketEvent.initConnect()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocketEventInitConnectImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initConnect,
    required TResult Function() getPlayerInfo,
    required TResult Function(String level) joinWaitRoom,
    required TResult Function(String level) leaveWaitRoom,
    required TResult Function(String roomId) joinRoom,
    required TResult Function(Point<int> p1, Point<int> p2, String room)
        playerClickLine,
  }) {
    return initConnect();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initConnect,
    TResult? Function()? getPlayerInfo,
    TResult? Function(String level)? joinWaitRoom,
    TResult? Function(String level)? leaveWaitRoom,
    TResult? Function(String roomId)? joinRoom,
    TResult? Function(Point<int> p1, Point<int> p2, String room)?
        playerClickLine,
  }) {
    return initConnect?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initConnect,
    TResult Function()? getPlayerInfo,
    TResult Function(String level)? joinWaitRoom,
    TResult Function(String level)? leaveWaitRoom,
    TResult Function(String roomId)? joinRoom,
    TResult Function(Point<int> p1, Point<int> p2, String room)?
        playerClickLine,
    required TResult orElse(),
  }) {
    if (initConnect != null) {
      return initConnect();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SocketEventInitConnect value) initConnect,
    required TResult Function(_SocketEventGetPlayerInfo value) getPlayerInfo,
    required TResult Function(_SocketEventJoinWaitRoom value) joinWaitRoom,
    required TResult Function(_SocketEventLeaveWaitRoom value) leaveWaitRoom,
    required TResult Function(_SocketEventJoinRoom value) joinRoom,
    required TResult Function(_SocketEventPlayerClickLine value)
        playerClickLine,
  }) {
    return initConnect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SocketEventInitConnect value)? initConnect,
    TResult? Function(_SocketEventGetPlayerInfo value)? getPlayerInfo,
    TResult? Function(_SocketEventJoinWaitRoom value)? joinWaitRoom,
    TResult? Function(_SocketEventLeaveWaitRoom value)? leaveWaitRoom,
    TResult? Function(_SocketEventJoinRoom value)? joinRoom,
    TResult? Function(_SocketEventPlayerClickLine value)? playerClickLine,
  }) {
    return initConnect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SocketEventInitConnect value)? initConnect,
    TResult Function(_SocketEventGetPlayerInfo value)? getPlayerInfo,
    TResult Function(_SocketEventJoinWaitRoom value)? joinWaitRoom,
    TResult Function(_SocketEventLeaveWaitRoom value)? leaveWaitRoom,
    TResult Function(_SocketEventJoinRoom value)? joinRoom,
    TResult Function(_SocketEventPlayerClickLine value)? playerClickLine,
    required TResult orElse(),
  }) {
    if (initConnect != null) {
      return initConnect(this);
    }
    return orElse();
  }
}

abstract class _SocketEventInitConnect implements SocketEvent {
  const factory _SocketEventInitConnect() = _$SocketEventInitConnectImpl;
}

/// @nodoc
abstract class _$$SocketEventGetPlayerInfoImplCopyWith<$Res> {
  factory _$$SocketEventGetPlayerInfoImplCopyWith(
          _$SocketEventGetPlayerInfoImpl value,
          $Res Function(_$SocketEventGetPlayerInfoImpl) then) =
      __$$SocketEventGetPlayerInfoImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SocketEventGetPlayerInfoImplCopyWithImpl<$Res>
    extends _$SocketEventCopyWithImpl<$Res, _$SocketEventGetPlayerInfoImpl>
    implements _$$SocketEventGetPlayerInfoImplCopyWith<$Res> {
  __$$SocketEventGetPlayerInfoImplCopyWithImpl(
      _$SocketEventGetPlayerInfoImpl _value,
      $Res Function(_$SocketEventGetPlayerInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of SocketEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SocketEventGetPlayerInfoImpl implements _SocketEventGetPlayerInfo {
  const _$SocketEventGetPlayerInfoImpl();

  @override
  String toString() {
    return 'SocketEvent.getPlayerInfo()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocketEventGetPlayerInfoImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initConnect,
    required TResult Function() getPlayerInfo,
    required TResult Function(String level) joinWaitRoom,
    required TResult Function(String level) leaveWaitRoom,
    required TResult Function(String roomId) joinRoom,
    required TResult Function(Point<int> p1, Point<int> p2, String room)
        playerClickLine,
  }) {
    return getPlayerInfo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initConnect,
    TResult? Function()? getPlayerInfo,
    TResult? Function(String level)? joinWaitRoom,
    TResult? Function(String level)? leaveWaitRoom,
    TResult? Function(String roomId)? joinRoom,
    TResult? Function(Point<int> p1, Point<int> p2, String room)?
        playerClickLine,
  }) {
    return getPlayerInfo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initConnect,
    TResult Function()? getPlayerInfo,
    TResult Function(String level)? joinWaitRoom,
    TResult Function(String level)? leaveWaitRoom,
    TResult Function(String roomId)? joinRoom,
    TResult Function(Point<int> p1, Point<int> p2, String room)?
        playerClickLine,
    required TResult orElse(),
  }) {
    if (getPlayerInfo != null) {
      return getPlayerInfo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SocketEventInitConnect value) initConnect,
    required TResult Function(_SocketEventGetPlayerInfo value) getPlayerInfo,
    required TResult Function(_SocketEventJoinWaitRoom value) joinWaitRoom,
    required TResult Function(_SocketEventLeaveWaitRoom value) leaveWaitRoom,
    required TResult Function(_SocketEventJoinRoom value) joinRoom,
    required TResult Function(_SocketEventPlayerClickLine value)
        playerClickLine,
  }) {
    return getPlayerInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SocketEventInitConnect value)? initConnect,
    TResult? Function(_SocketEventGetPlayerInfo value)? getPlayerInfo,
    TResult? Function(_SocketEventJoinWaitRoom value)? joinWaitRoom,
    TResult? Function(_SocketEventLeaveWaitRoom value)? leaveWaitRoom,
    TResult? Function(_SocketEventJoinRoom value)? joinRoom,
    TResult? Function(_SocketEventPlayerClickLine value)? playerClickLine,
  }) {
    return getPlayerInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SocketEventInitConnect value)? initConnect,
    TResult Function(_SocketEventGetPlayerInfo value)? getPlayerInfo,
    TResult Function(_SocketEventJoinWaitRoom value)? joinWaitRoom,
    TResult Function(_SocketEventLeaveWaitRoom value)? leaveWaitRoom,
    TResult Function(_SocketEventJoinRoom value)? joinRoom,
    TResult Function(_SocketEventPlayerClickLine value)? playerClickLine,
    required TResult orElse(),
  }) {
    if (getPlayerInfo != null) {
      return getPlayerInfo(this);
    }
    return orElse();
  }
}

abstract class _SocketEventGetPlayerInfo implements SocketEvent {
  const factory _SocketEventGetPlayerInfo() = _$SocketEventGetPlayerInfoImpl;
}

/// @nodoc
abstract class _$$SocketEventJoinWaitRoomImplCopyWith<$Res> {
  factory _$$SocketEventJoinWaitRoomImplCopyWith(
          _$SocketEventJoinWaitRoomImpl value,
          $Res Function(_$SocketEventJoinWaitRoomImpl) then) =
      __$$SocketEventJoinWaitRoomImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String level});
}

/// @nodoc
class __$$SocketEventJoinWaitRoomImplCopyWithImpl<$Res>
    extends _$SocketEventCopyWithImpl<$Res, _$SocketEventJoinWaitRoomImpl>
    implements _$$SocketEventJoinWaitRoomImplCopyWith<$Res> {
  __$$SocketEventJoinWaitRoomImplCopyWithImpl(
      _$SocketEventJoinWaitRoomImpl _value,
      $Res Function(_$SocketEventJoinWaitRoomImpl) _then)
      : super(_value, _then);

  /// Create a copy of SocketEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = null,
  }) {
    return _then(_$SocketEventJoinWaitRoomImpl(
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SocketEventJoinWaitRoomImpl implements _SocketEventJoinWaitRoom {
  const _$SocketEventJoinWaitRoomImpl({required this.level});

  @override
  final String level;

  @override
  String toString() {
    return 'SocketEvent.joinWaitRoom(level: $level)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocketEventJoinWaitRoomImpl &&
            (identical(other.level, level) || other.level == level));
  }

  @override
  int get hashCode => Object.hash(runtimeType, level);

  /// Create a copy of SocketEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SocketEventJoinWaitRoomImplCopyWith<_$SocketEventJoinWaitRoomImpl>
      get copyWith => __$$SocketEventJoinWaitRoomImplCopyWithImpl<
          _$SocketEventJoinWaitRoomImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initConnect,
    required TResult Function() getPlayerInfo,
    required TResult Function(String level) joinWaitRoom,
    required TResult Function(String level) leaveWaitRoom,
    required TResult Function(String roomId) joinRoom,
    required TResult Function(Point<int> p1, Point<int> p2, String room)
        playerClickLine,
  }) {
    return joinWaitRoom(level);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initConnect,
    TResult? Function()? getPlayerInfo,
    TResult? Function(String level)? joinWaitRoom,
    TResult? Function(String level)? leaveWaitRoom,
    TResult? Function(String roomId)? joinRoom,
    TResult? Function(Point<int> p1, Point<int> p2, String room)?
        playerClickLine,
  }) {
    return joinWaitRoom?.call(level);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initConnect,
    TResult Function()? getPlayerInfo,
    TResult Function(String level)? joinWaitRoom,
    TResult Function(String level)? leaveWaitRoom,
    TResult Function(String roomId)? joinRoom,
    TResult Function(Point<int> p1, Point<int> p2, String room)?
        playerClickLine,
    required TResult orElse(),
  }) {
    if (joinWaitRoom != null) {
      return joinWaitRoom(level);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SocketEventInitConnect value) initConnect,
    required TResult Function(_SocketEventGetPlayerInfo value) getPlayerInfo,
    required TResult Function(_SocketEventJoinWaitRoom value) joinWaitRoom,
    required TResult Function(_SocketEventLeaveWaitRoom value) leaveWaitRoom,
    required TResult Function(_SocketEventJoinRoom value) joinRoom,
    required TResult Function(_SocketEventPlayerClickLine value)
        playerClickLine,
  }) {
    return joinWaitRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SocketEventInitConnect value)? initConnect,
    TResult? Function(_SocketEventGetPlayerInfo value)? getPlayerInfo,
    TResult? Function(_SocketEventJoinWaitRoom value)? joinWaitRoom,
    TResult? Function(_SocketEventLeaveWaitRoom value)? leaveWaitRoom,
    TResult? Function(_SocketEventJoinRoom value)? joinRoom,
    TResult? Function(_SocketEventPlayerClickLine value)? playerClickLine,
  }) {
    return joinWaitRoom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SocketEventInitConnect value)? initConnect,
    TResult Function(_SocketEventGetPlayerInfo value)? getPlayerInfo,
    TResult Function(_SocketEventJoinWaitRoom value)? joinWaitRoom,
    TResult Function(_SocketEventLeaveWaitRoom value)? leaveWaitRoom,
    TResult Function(_SocketEventJoinRoom value)? joinRoom,
    TResult Function(_SocketEventPlayerClickLine value)? playerClickLine,
    required TResult orElse(),
  }) {
    if (joinWaitRoom != null) {
      return joinWaitRoom(this);
    }
    return orElse();
  }
}

abstract class _SocketEventJoinWaitRoom implements SocketEvent {
  const factory _SocketEventJoinWaitRoom({required final String level}) =
      _$SocketEventJoinWaitRoomImpl;

  String get level;

  /// Create a copy of SocketEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SocketEventJoinWaitRoomImplCopyWith<_$SocketEventJoinWaitRoomImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SocketEventLeaveWaitRoomImplCopyWith<$Res> {
  factory _$$SocketEventLeaveWaitRoomImplCopyWith(
          _$SocketEventLeaveWaitRoomImpl value,
          $Res Function(_$SocketEventLeaveWaitRoomImpl) then) =
      __$$SocketEventLeaveWaitRoomImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String level});
}

/// @nodoc
class __$$SocketEventLeaveWaitRoomImplCopyWithImpl<$Res>
    extends _$SocketEventCopyWithImpl<$Res, _$SocketEventLeaveWaitRoomImpl>
    implements _$$SocketEventLeaveWaitRoomImplCopyWith<$Res> {
  __$$SocketEventLeaveWaitRoomImplCopyWithImpl(
      _$SocketEventLeaveWaitRoomImpl _value,
      $Res Function(_$SocketEventLeaveWaitRoomImpl) _then)
      : super(_value, _then);

  /// Create a copy of SocketEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = null,
  }) {
    return _then(_$SocketEventLeaveWaitRoomImpl(
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SocketEventLeaveWaitRoomImpl implements _SocketEventLeaveWaitRoom {
  const _$SocketEventLeaveWaitRoomImpl({required this.level});

  @override
  final String level;

  @override
  String toString() {
    return 'SocketEvent.leaveWaitRoom(level: $level)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocketEventLeaveWaitRoomImpl &&
            (identical(other.level, level) || other.level == level));
  }

  @override
  int get hashCode => Object.hash(runtimeType, level);

  /// Create a copy of SocketEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SocketEventLeaveWaitRoomImplCopyWith<_$SocketEventLeaveWaitRoomImpl>
      get copyWith => __$$SocketEventLeaveWaitRoomImplCopyWithImpl<
          _$SocketEventLeaveWaitRoomImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initConnect,
    required TResult Function() getPlayerInfo,
    required TResult Function(String level) joinWaitRoom,
    required TResult Function(String level) leaveWaitRoom,
    required TResult Function(String roomId) joinRoom,
    required TResult Function(Point<int> p1, Point<int> p2, String room)
        playerClickLine,
  }) {
    return leaveWaitRoom(level);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initConnect,
    TResult? Function()? getPlayerInfo,
    TResult? Function(String level)? joinWaitRoom,
    TResult? Function(String level)? leaveWaitRoom,
    TResult? Function(String roomId)? joinRoom,
    TResult? Function(Point<int> p1, Point<int> p2, String room)?
        playerClickLine,
  }) {
    return leaveWaitRoom?.call(level);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initConnect,
    TResult Function()? getPlayerInfo,
    TResult Function(String level)? joinWaitRoom,
    TResult Function(String level)? leaveWaitRoom,
    TResult Function(String roomId)? joinRoom,
    TResult Function(Point<int> p1, Point<int> p2, String room)?
        playerClickLine,
    required TResult orElse(),
  }) {
    if (leaveWaitRoom != null) {
      return leaveWaitRoom(level);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SocketEventInitConnect value) initConnect,
    required TResult Function(_SocketEventGetPlayerInfo value) getPlayerInfo,
    required TResult Function(_SocketEventJoinWaitRoom value) joinWaitRoom,
    required TResult Function(_SocketEventLeaveWaitRoom value) leaveWaitRoom,
    required TResult Function(_SocketEventJoinRoom value) joinRoom,
    required TResult Function(_SocketEventPlayerClickLine value)
        playerClickLine,
  }) {
    return leaveWaitRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SocketEventInitConnect value)? initConnect,
    TResult? Function(_SocketEventGetPlayerInfo value)? getPlayerInfo,
    TResult? Function(_SocketEventJoinWaitRoom value)? joinWaitRoom,
    TResult? Function(_SocketEventLeaveWaitRoom value)? leaveWaitRoom,
    TResult? Function(_SocketEventJoinRoom value)? joinRoom,
    TResult? Function(_SocketEventPlayerClickLine value)? playerClickLine,
  }) {
    return leaveWaitRoom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SocketEventInitConnect value)? initConnect,
    TResult Function(_SocketEventGetPlayerInfo value)? getPlayerInfo,
    TResult Function(_SocketEventJoinWaitRoom value)? joinWaitRoom,
    TResult Function(_SocketEventLeaveWaitRoom value)? leaveWaitRoom,
    TResult Function(_SocketEventJoinRoom value)? joinRoom,
    TResult Function(_SocketEventPlayerClickLine value)? playerClickLine,
    required TResult orElse(),
  }) {
    if (leaveWaitRoom != null) {
      return leaveWaitRoom(this);
    }
    return orElse();
  }
}

abstract class _SocketEventLeaveWaitRoom implements SocketEvent {
  const factory _SocketEventLeaveWaitRoom({required final String level}) =
      _$SocketEventLeaveWaitRoomImpl;

  String get level;

  /// Create a copy of SocketEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SocketEventLeaveWaitRoomImplCopyWith<_$SocketEventLeaveWaitRoomImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SocketEventJoinRoomImplCopyWith<$Res> {
  factory _$$SocketEventJoinRoomImplCopyWith(_$SocketEventJoinRoomImpl value,
          $Res Function(_$SocketEventJoinRoomImpl) then) =
      __$$SocketEventJoinRoomImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String roomId});
}

/// @nodoc
class __$$SocketEventJoinRoomImplCopyWithImpl<$Res>
    extends _$SocketEventCopyWithImpl<$Res, _$SocketEventJoinRoomImpl>
    implements _$$SocketEventJoinRoomImplCopyWith<$Res> {
  __$$SocketEventJoinRoomImplCopyWithImpl(_$SocketEventJoinRoomImpl _value,
      $Res Function(_$SocketEventJoinRoomImpl) _then)
      : super(_value, _then);

  /// Create a copy of SocketEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomId = null,
  }) {
    return _then(_$SocketEventJoinRoomImpl(
      null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SocketEventJoinRoomImpl implements _SocketEventJoinRoom {
  const _$SocketEventJoinRoomImpl(this.roomId);

  @override
  final String roomId;

  @override
  String toString() {
    return 'SocketEvent.joinRoom(roomId: $roomId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocketEventJoinRoomImpl &&
            (identical(other.roomId, roomId) || other.roomId == roomId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, roomId);

  /// Create a copy of SocketEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SocketEventJoinRoomImplCopyWith<_$SocketEventJoinRoomImpl> get copyWith =>
      __$$SocketEventJoinRoomImplCopyWithImpl<_$SocketEventJoinRoomImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initConnect,
    required TResult Function() getPlayerInfo,
    required TResult Function(String level) joinWaitRoom,
    required TResult Function(String level) leaveWaitRoom,
    required TResult Function(String roomId) joinRoom,
    required TResult Function(Point<int> p1, Point<int> p2, String room)
        playerClickLine,
  }) {
    return joinRoom(roomId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initConnect,
    TResult? Function()? getPlayerInfo,
    TResult? Function(String level)? joinWaitRoom,
    TResult? Function(String level)? leaveWaitRoom,
    TResult? Function(String roomId)? joinRoom,
    TResult? Function(Point<int> p1, Point<int> p2, String room)?
        playerClickLine,
  }) {
    return joinRoom?.call(roomId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initConnect,
    TResult Function()? getPlayerInfo,
    TResult Function(String level)? joinWaitRoom,
    TResult Function(String level)? leaveWaitRoom,
    TResult Function(String roomId)? joinRoom,
    TResult Function(Point<int> p1, Point<int> p2, String room)?
        playerClickLine,
    required TResult orElse(),
  }) {
    if (joinRoom != null) {
      return joinRoom(roomId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SocketEventInitConnect value) initConnect,
    required TResult Function(_SocketEventGetPlayerInfo value) getPlayerInfo,
    required TResult Function(_SocketEventJoinWaitRoom value) joinWaitRoom,
    required TResult Function(_SocketEventLeaveWaitRoom value) leaveWaitRoom,
    required TResult Function(_SocketEventJoinRoom value) joinRoom,
    required TResult Function(_SocketEventPlayerClickLine value)
        playerClickLine,
  }) {
    return joinRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SocketEventInitConnect value)? initConnect,
    TResult? Function(_SocketEventGetPlayerInfo value)? getPlayerInfo,
    TResult? Function(_SocketEventJoinWaitRoom value)? joinWaitRoom,
    TResult? Function(_SocketEventLeaveWaitRoom value)? leaveWaitRoom,
    TResult? Function(_SocketEventJoinRoom value)? joinRoom,
    TResult? Function(_SocketEventPlayerClickLine value)? playerClickLine,
  }) {
    return joinRoom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SocketEventInitConnect value)? initConnect,
    TResult Function(_SocketEventGetPlayerInfo value)? getPlayerInfo,
    TResult Function(_SocketEventJoinWaitRoom value)? joinWaitRoom,
    TResult Function(_SocketEventLeaveWaitRoom value)? leaveWaitRoom,
    TResult Function(_SocketEventJoinRoom value)? joinRoom,
    TResult Function(_SocketEventPlayerClickLine value)? playerClickLine,
    required TResult orElse(),
  }) {
    if (joinRoom != null) {
      return joinRoom(this);
    }
    return orElse();
  }
}

abstract class _SocketEventJoinRoom implements SocketEvent {
  const factory _SocketEventJoinRoom(final String roomId) =
      _$SocketEventJoinRoomImpl;

  String get roomId;

  /// Create a copy of SocketEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SocketEventJoinRoomImplCopyWith<_$SocketEventJoinRoomImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SocketEventPlayerClickLineImplCopyWith<$Res> {
  factory _$$SocketEventPlayerClickLineImplCopyWith(
          _$SocketEventPlayerClickLineImpl value,
          $Res Function(_$SocketEventPlayerClickLineImpl) then) =
      __$$SocketEventPlayerClickLineImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Point<int> p1, Point<int> p2, String room});
}

/// @nodoc
class __$$SocketEventPlayerClickLineImplCopyWithImpl<$Res>
    extends _$SocketEventCopyWithImpl<$Res, _$SocketEventPlayerClickLineImpl>
    implements _$$SocketEventPlayerClickLineImplCopyWith<$Res> {
  __$$SocketEventPlayerClickLineImplCopyWithImpl(
      _$SocketEventPlayerClickLineImpl _value,
      $Res Function(_$SocketEventPlayerClickLineImpl) _then)
      : super(_value, _then);

  /// Create a copy of SocketEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? p1 = null,
    Object? p2 = null,
    Object? room = null,
  }) {
    return _then(_$SocketEventPlayerClickLineImpl(
      p1: null == p1
          ? _value.p1
          : p1 // ignore: cast_nullable_to_non_nullable
              as Point<int>,
      p2: null == p2
          ? _value.p2
          : p2 // ignore: cast_nullable_to_non_nullable
              as Point<int>,
      room: null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SocketEventPlayerClickLineImpl implements _SocketEventPlayerClickLine {
  const _$SocketEventPlayerClickLineImpl(
      {required this.p1, required this.p2, required this.room});

  @override
  final Point<int> p1;
  @override
  final Point<int> p2;
  @override
  final String room;

  @override
  String toString() {
    return 'SocketEvent.playerClickLine(p1: $p1, p2: $p2, room: $room)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocketEventPlayerClickLineImpl &&
            (identical(other.p1, p1) || other.p1 == p1) &&
            (identical(other.p2, p2) || other.p2 == p2) &&
            (identical(other.room, room) || other.room == room));
  }

  @override
  int get hashCode => Object.hash(runtimeType, p1, p2, room);

  /// Create a copy of SocketEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SocketEventPlayerClickLineImplCopyWith<_$SocketEventPlayerClickLineImpl>
      get copyWith => __$$SocketEventPlayerClickLineImplCopyWithImpl<
          _$SocketEventPlayerClickLineImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initConnect,
    required TResult Function() getPlayerInfo,
    required TResult Function(String level) joinWaitRoom,
    required TResult Function(String level) leaveWaitRoom,
    required TResult Function(String roomId) joinRoom,
    required TResult Function(Point<int> p1, Point<int> p2, String room)
        playerClickLine,
  }) {
    return playerClickLine(p1, p2, room);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initConnect,
    TResult? Function()? getPlayerInfo,
    TResult? Function(String level)? joinWaitRoom,
    TResult? Function(String level)? leaveWaitRoom,
    TResult? Function(String roomId)? joinRoom,
    TResult? Function(Point<int> p1, Point<int> p2, String room)?
        playerClickLine,
  }) {
    return playerClickLine?.call(p1, p2, room);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initConnect,
    TResult Function()? getPlayerInfo,
    TResult Function(String level)? joinWaitRoom,
    TResult Function(String level)? leaveWaitRoom,
    TResult Function(String roomId)? joinRoom,
    TResult Function(Point<int> p1, Point<int> p2, String room)?
        playerClickLine,
    required TResult orElse(),
  }) {
    if (playerClickLine != null) {
      return playerClickLine(p1, p2, room);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SocketEventInitConnect value) initConnect,
    required TResult Function(_SocketEventGetPlayerInfo value) getPlayerInfo,
    required TResult Function(_SocketEventJoinWaitRoom value) joinWaitRoom,
    required TResult Function(_SocketEventLeaveWaitRoom value) leaveWaitRoom,
    required TResult Function(_SocketEventJoinRoom value) joinRoom,
    required TResult Function(_SocketEventPlayerClickLine value)
        playerClickLine,
  }) {
    return playerClickLine(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SocketEventInitConnect value)? initConnect,
    TResult? Function(_SocketEventGetPlayerInfo value)? getPlayerInfo,
    TResult? Function(_SocketEventJoinWaitRoom value)? joinWaitRoom,
    TResult? Function(_SocketEventLeaveWaitRoom value)? leaveWaitRoom,
    TResult? Function(_SocketEventJoinRoom value)? joinRoom,
    TResult? Function(_SocketEventPlayerClickLine value)? playerClickLine,
  }) {
    return playerClickLine?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SocketEventInitConnect value)? initConnect,
    TResult Function(_SocketEventGetPlayerInfo value)? getPlayerInfo,
    TResult Function(_SocketEventJoinWaitRoom value)? joinWaitRoom,
    TResult Function(_SocketEventLeaveWaitRoom value)? leaveWaitRoom,
    TResult Function(_SocketEventJoinRoom value)? joinRoom,
    TResult Function(_SocketEventPlayerClickLine value)? playerClickLine,
    required TResult orElse(),
  }) {
    if (playerClickLine != null) {
      return playerClickLine(this);
    }
    return orElse();
  }
}

abstract class _SocketEventPlayerClickLine implements SocketEvent {
  const factory _SocketEventPlayerClickLine(
      {required final Point<int> p1,
      required final Point<int> p2,
      required final String room}) = _$SocketEventPlayerClickLineImpl;

  Point<int> get p1;
  Point<int> get p2;
  String get room;

  /// Create a copy of SocketEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SocketEventPlayerClickLineImplCopyWith<_$SocketEventPlayerClickLineImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SocketState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic data) unknown,
    required TResult Function(bool connected, String? error) connectedToSocket,
    required TResult Function(UserPlayer player) playerInfo,
    required TResult Function(String? roomId, String? res, String? error)
        waitingRoom,
    required TResult Function(String starter, List<UserPlayer> players)
        startGame,
    required TResult Function(LineEntity line, String nextUserId)
        playerClickLine,
    required TResult Function(String? winnerId) gameOver,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic data)? unknown,
    TResult? Function(bool connected, String? error)? connectedToSocket,
    TResult? Function(UserPlayer player)? playerInfo,
    TResult? Function(String? roomId, String? res, String? error)? waitingRoom,
    TResult? Function(String starter, List<UserPlayer> players)? startGame,
    TResult? Function(LineEntity line, String nextUserId)? playerClickLine,
    TResult? Function(String? winnerId)? gameOver,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic data)? unknown,
    TResult Function(bool connected, String? error)? connectedToSocket,
    TResult Function(UserPlayer player)? playerInfo,
    TResult Function(String? roomId, String? res, String? error)? waitingRoom,
    TResult Function(String starter, List<UserPlayer> players)? startGame,
    TResult Function(LineEntity line, String nextUserId)? playerClickLine,
    TResult Function(String? winnerId)? gameOver,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_SocketStateConnectedToSocket value)
        connectedToSocket,
    required TResult Function(_SocketStatePlayerInfo value) playerInfo,
    required TResult Function(_SocketStateWatingRoom value) waitingRoom,
    required TResult Function(_StartGame value) startGame,
    required TResult Function(_PlayerClickLine value) playerClickLine,
    required TResult Function(_GameOver value) gameOver,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_SocketStateConnectedToSocket value)? connectedToSocket,
    TResult? Function(_SocketStatePlayerInfo value)? playerInfo,
    TResult? Function(_SocketStateWatingRoom value)? waitingRoom,
    TResult? Function(_StartGame value)? startGame,
    TResult? Function(_PlayerClickLine value)? playerClickLine,
    TResult? Function(_GameOver value)? gameOver,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unknown value)? unknown,
    TResult Function(_SocketStateConnectedToSocket value)? connectedToSocket,
    TResult Function(_SocketStatePlayerInfo value)? playerInfo,
    TResult Function(_SocketStateWatingRoom value)? waitingRoom,
    TResult Function(_StartGame value)? startGame,
    TResult Function(_PlayerClickLine value)? playerClickLine,
    TResult Function(_GameOver value)? gameOver,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocketStateCopyWith<$Res> {
  factory $SocketStateCopyWith(
          SocketState value, $Res Function(SocketState) then) =
      _$SocketStateCopyWithImpl<$Res, SocketState>;
}

/// @nodoc
class _$SocketStateCopyWithImpl<$Res, $Val extends SocketState>
    implements $SocketStateCopyWith<$Res> {
  _$SocketStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SocketState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UnknownImplCopyWith<$Res> {
  factory _$$UnknownImplCopyWith(
          _$UnknownImpl value, $Res Function(_$UnknownImpl) then) =
      __$$UnknownImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic data});
}

/// @nodoc
class __$$UnknownImplCopyWithImpl<$Res>
    extends _$SocketStateCopyWithImpl<$Res, _$UnknownImpl>
    implements _$$UnknownImplCopyWith<$Res> {
  __$$UnknownImplCopyWithImpl(
      _$UnknownImpl _value, $Res Function(_$UnknownImpl) _then)
      : super(_value, _then);

  /// Create a copy of SocketState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$UnknownImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$UnknownImpl implements _Unknown {
  const _$UnknownImpl({this.data});

  @override
  final dynamic data;

  @override
  String toString() {
    return 'SocketState.unknown(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknownImpl &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of SocketState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnknownImplCopyWith<_$UnknownImpl> get copyWith =>
      __$$UnknownImplCopyWithImpl<_$UnknownImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic data) unknown,
    required TResult Function(bool connected, String? error) connectedToSocket,
    required TResult Function(UserPlayer player) playerInfo,
    required TResult Function(String? roomId, String? res, String? error)
        waitingRoom,
    required TResult Function(String starter, List<UserPlayer> players)
        startGame,
    required TResult Function(LineEntity line, String nextUserId)
        playerClickLine,
    required TResult Function(String? winnerId) gameOver,
  }) {
    return unknown(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic data)? unknown,
    TResult? Function(bool connected, String? error)? connectedToSocket,
    TResult? Function(UserPlayer player)? playerInfo,
    TResult? Function(String? roomId, String? res, String? error)? waitingRoom,
    TResult? Function(String starter, List<UserPlayer> players)? startGame,
    TResult? Function(LineEntity line, String nextUserId)? playerClickLine,
    TResult? Function(String? winnerId)? gameOver,
  }) {
    return unknown?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic data)? unknown,
    TResult Function(bool connected, String? error)? connectedToSocket,
    TResult Function(UserPlayer player)? playerInfo,
    TResult Function(String? roomId, String? res, String? error)? waitingRoom,
    TResult Function(String starter, List<UserPlayer> players)? startGame,
    TResult Function(LineEntity line, String nextUserId)? playerClickLine,
    TResult Function(String? winnerId)? gameOver,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_SocketStateConnectedToSocket value)
        connectedToSocket,
    required TResult Function(_SocketStatePlayerInfo value) playerInfo,
    required TResult Function(_SocketStateWatingRoom value) waitingRoom,
    required TResult Function(_StartGame value) startGame,
    required TResult Function(_PlayerClickLine value) playerClickLine,
    required TResult Function(_GameOver value) gameOver,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_SocketStateConnectedToSocket value)? connectedToSocket,
    TResult? Function(_SocketStatePlayerInfo value)? playerInfo,
    TResult? Function(_SocketStateWatingRoom value)? waitingRoom,
    TResult? Function(_StartGame value)? startGame,
    TResult? Function(_PlayerClickLine value)? playerClickLine,
    TResult? Function(_GameOver value)? gameOver,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unknown value)? unknown,
    TResult Function(_SocketStateConnectedToSocket value)? connectedToSocket,
    TResult Function(_SocketStatePlayerInfo value)? playerInfo,
    TResult Function(_SocketStateWatingRoom value)? waitingRoom,
    TResult Function(_StartGame value)? startGame,
    TResult Function(_PlayerClickLine value)? playerClickLine,
    TResult Function(_GameOver value)? gameOver,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _Unknown implements SocketState {
  const factory _Unknown({final dynamic data}) = _$UnknownImpl;

  dynamic get data;

  /// Create a copy of SocketState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnknownImplCopyWith<_$UnknownImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SocketStateConnectedToSocketImplCopyWith<$Res> {
  factory _$$SocketStateConnectedToSocketImplCopyWith(
          _$SocketStateConnectedToSocketImpl value,
          $Res Function(_$SocketStateConnectedToSocketImpl) then) =
      __$$SocketStateConnectedToSocketImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool connected, String? error});
}

/// @nodoc
class __$$SocketStateConnectedToSocketImplCopyWithImpl<$Res>
    extends _$SocketStateCopyWithImpl<$Res, _$SocketStateConnectedToSocketImpl>
    implements _$$SocketStateConnectedToSocketImplCopyWith<$Res> {
  __$$SocketStateConnectedToSocketImplCopyWithImpl(
      _$SocketStateConnectedToSocketImpl _value,
      $Res Function(_$SocketStateConnectedToSocketImpl) _then)
      : super(_value, _then);

  /// Create a copy of SocketState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? connected = null,
    Object? error = freezed,
  }) {
    return _then(_$SocketStateConnectedToSocketImpl(
      connected: null == connected
          ? _value.connected
          : connected // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SocketStateConnectedToSocketImpl
    implements _SocketStateConnectedToSocket {
  const _$SocketStateConnectedToSocketImpl(
      {required this.connected, this.error});

  @override
  final bool connected;
  @override
  final String? error;

  @override
  String toString() {
    return 'SocketState.connectedToSocket(connected: $connected, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocketStateConnectedToSocketImpl &&
            (identical(other.connected, connected) ||
                other.connected == connected) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, connected, error);

  /// Create a copy of SocketState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SocketStateConnectedToSocketImplCopyWith<
          _$SocketStateConnectedToSocketImpl>
      get copyWith => __$$SocketStateConnectedToSocketImplCopyWithImpl<
          _$SocketStateConnectedToSocketImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic data) unknown,
    required TResult Function(bool connected, String? error) connectedToSocket,
    required TResult Function(UserPlayer player) playerInfo,
    required TResult Function(String? roomId, String? res, String? error)
        waitingRoom,
    required TResult Function(String starter, List<UserPlayer> players)
        startGame,
    required TResult Function(LineEntity line, String nextUserId)
        playerClickLine,
    required TResult Function(String? winnerId) gameOver,
  }) {
    return connectedToSocket(connected, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic data)? unknown,
    TResult? Function(bool connected, String? error)? connectedToSocket,
    TResult? Function(UserPlayer player)? playerInfo,
    TResult? Function(String? roomId, String? res, String? error)? waitingRoom,
    TResult? Function(String starter, List<UserPlayer> players)? startGame,
    TResult? Function(LineEntity line, String nextUserId)? playerClickLine,
    TResult? Function(String? winnerId)? gameOver,
  }) {
    return connectedToSocket?.call(connected, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic data)? unknown,
    TResult Function(bool connected, String? error)? connectedToSocket,
    TResult Function(UserPlayer player)? playerInfo,
    TResult Function(String? roomId, String? res, String? error)? waitingRoom,
    TResult Function(String starter, List<UserPlayer> players)? startGame,
    TResult Function(LineEntity line, String nextUserId)? playerClickLine,
    TResult Function(String? winnerId)? gameOver,
    required TResult orElse(),
  }) {
    if (connectedToSocket != null) {
      return connectedToSocket(connected, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_SocketStateConnectedToSocket value)
        connectedToSocket,
    required TResult Function(_SocketStatePlayerInfo value) playerInfo,
    required TResult Function(_SocketStateWatingRoom value) waitingRoom,
    required TResult Function(_StartGame value) startGame,
    required TResult Function(_PlayerClickLine value) playerClickLine,
    required TResult Function(_GameOver value) gameOver,
  }) {
    return connectedToSocket(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_SocketStateConnectedToSocket value)? connectedToSocket,
    TResult? Function(_SocketStatePlayerInfo value)? playerInfo,
    TResult? Function(_SocketStateWatingRoom value)? waitingRoom,
    TResult? Function(_StartGame value)? startGame,
    TResult? Function(_PlayerClickLine value)? playerClickLine,
    TResult? Function(_GameOver value)? gameOver,
  }) {
    return connectedToSocket?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unknown value)? unknown,
    TResult Function(_SocketStateConnectedToSocket value)? connectedToSocket,
    TResult Function(_SocketStatePlayerInfo value)? playerInfo,
    TResult Function(_SocketStateWatingRoom value)? waitingRoom,
    TResult Function(_StartGame value)? startGame,
    TResult Function(_PlayerClickLine value)? playerClickLine,
    TResult Function(_GameOver value)? gameOver,
    required TResult orElse(),
  }) {
    if (connectedToSocket != null) {
      return connectedToSocket(this);
    }
    return orElse();
  }
}

abstract class _SocketStateConnectedToSocket implements SocketState {
  const factory _SocketStateConnectedToSocket(
      {required final bool connected,
      final String? error}) = _$SocketStateConnectedToSocketImpl;

  bool get connected;
  String? get error;

  /// Create a copy of SocketState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SocketStateConnectedToSocketImplCopyWith<
          _$SocketStateConnectedToSocketImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SocketStatePlayerInfoImplCopyWith<$Res> {
  factory _$$SocketStatePlayerInfoImplCopyWith(
          _$SocketStatePlayerInfoImpl value,
          $Res Function(_$SocketStatePlayerInfoImpl) then) =
      __$$SocketStatePlayerInfoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserPlayer player});

  $UserPlayerCopyWith<$Res> get player;
}

/// @nodoc
class __$$SocketStatePlayerInfoImplCopyWithImpl<$Res>
    extends _$SocketStateCopyWithImpl<$Res, _$SocketStatePlayerInfoImpl>
    implements _$$SocketStatePlayerInfoImplCopyWith<$Res> {
  __$$SocketStatePlayerInfoImplCopyWithImpl(_$SocketStatePlayerInfoImpl _value,
      $Res Function(_$SocketStatePlayerInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of SocketState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? player = null,
  }) {
    return _then(_$SocketStatePlayerInfoImpl(
      null == player
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as UserPlayer,
    ));
  }

  /// Create a copy of SocketState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserPlayerCopyWith<$Res> get player {
    return $UserPlayerCopyWith<$Res>(_value.player, (value) {
      return _then(_value.copyWith(player: value));
    });
  }
}

/// @nodoc

class _$SocketStatePlayerInfoImpl implements _SocketStatePlayerInfo {
  const _$SocketStatePlayerInfoImpl(this.player);

  @override
  final UserPlayer player;

  @override
  String toString() {
    return 'SocketState.playerInfo(player: $player)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocketStatePlayerInfoImpl &&
            (identical(other.player, player) || other.player == player));
  }

  @override
  int get hashCode => Object.hash(runtimeType, player);

  /// Create a copy of SocketState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SocketStatePlayerInfoImplCopyWith<_$SocketStatePlayerInfoImpl>
      get copyWith => __$$SocketStatePlayerInfoImplCopyWithImpl<
          _$SocketStatePlayerInfoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic data) unknown,
    required TResult Function(bool connected, String? error) connectedToSocket,
    required TResult Function(UserPlayer player) playerInfo,
    required TResult Function(String? roomId, String? res, String? error)
        waitingRoom,
    required TResult Function(String starter, List<UserPlayer> players)
        startGame,
    required TResult Function(LineEntity line, String nextUserId)
        playerClickLine,
    required TResult Function(String? winnerId) gameOver,
  }) {
    return playerInfo(player);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic data)? unknown,
    TResult? Function(bool connected, String? error)? connectedToSocket,
    TResult? Function(UserPlayer player)? playerInfo,
    TResult? Function(String? roomId, String? res, String? error)? waitingRoom,
    TResult? Function(String starter, List<UserPlayer> players)? startGame,
    TResult? Function(LineEntity line, String nextUserId)? playerClickLine,
    TResult? Function(String? winnerId)? gameOver,
  }) {
    return playerInfo?.call(player);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic data)? unknown,
    TResult Function(bool connected, String? error)? connectedToSocket,
    TResult Function(UserPlayer player)? playerInfo,
    TResult Function(String? roomId, String? res, String? error)? waitingRoom,
    TResult Function(String starter, List<UserPlayer> players)? startGame,
    TResult Function(LineEntity line, String nextUserId)? playerClickLine,
    TResult Function(String? winnerId)? gameOver,
    required TResult orElse(),
  }) {
    if (playerInfo != null) {
      return playerInfo(player);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_SocketStateConnectedToSocket value)
        connectedToSocket,
    required TResult Function(_SocketStatePlayerInfo value) playerInfo,
    required TResult Function(_SocketStateWatingRoom value) waitingRoom,
    required TResult Function(_StartGame value) startGame,
    required TResult Function(_PlayerClickLine value) playerClickLine,
    required TResult Function(_GameOver value) gameOver,
  }) {
    return playerInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_SocketStateConnectedToSocket value)? connectedToSocket,
    TResult? Function(_SocketStatePlayerInfo value)? playerInfo,
    TResult? Function(_SocketStateWatingRoom value)? waitingRoom,
    TResult? Function(_StartGame value)? startGame,
    TResult? Function(_PlayerClickLine value)? playerClickLine,
    TResult? Function(_GameOver value)? gameOver,
  }) {
    return playerInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unknown value)? unknown,
    TResult Function(_SocketStateConnectedToSocket value)? connectedToSocket,
    TResult Function(_SocketStatePlayerInfo value)? playerInfo,
    TResult Function(_SocketStateWatingRoom value)? waitingRoom,
    TResult Function(_StartGame value)? startGame,
    TResult Function(_PlayerClickLine value)? playerClickLine,
    TResult Function(_GameOver value)? gameOver,
    required TResult orElse(),
  }) {
    if (playerInfo != null) {
      return playerInfo(this);
    }
    return orElse();
  }
}

abstract class _SocketStatePlayerInfo implements SocketState {
  const factory _SocketStatePlayerInfo(final UserPlayer player) =
      _$SocketStatePlayerInfoImpl;

  UserPlayer get player;

  /// Create a copy of SocketState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SocketStatePlayerInfoImplCopyWith<_$SocketStatePlayerInfoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SocketStateWatingRoomImplCopyWith<$Res> {
  factory _$$SocketStateWatingRoomImplCopyWith(
          _$SocketStateWatingRoomImpl value,
          $Res Function(_$SocketStateWatingRoomImpl) then) =
      __$$SocketStateWatingRoomImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? roomId, String? res, String? error});
}

/// @nodoc
class __$$SocketStateWatingRoomImplCopyWithImpl<$Res>
    extends _$SocketStateCopyWithImpl<$Res, _$SocketStateWatingRoomImpl>
    implements _$$SocketStateWatingRoomImplCopyWith<$Res> {
  __$$SocketStateWatingRoomImplCopyWithImpl(_$SocketStateWatingRoomImpl _value,
      $Res Function(_$SocketStateWatingRoomImpl) _then)
      : super(_value, _then);

  /// Create a copy of SocketState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomId = freezed,
    Object? res = freezed,
    Object? error = freezed,
  }) {
    return _then(_$SocketStateWatingRoomImpl(
      roomId: freezed == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String?,
      res: freezed == res
          ? _value.res
          : res // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SocketStateWatingRoomImpl implements _SocketStateWatingRoom {
  const _$SocketStateWatingRoomImpl({this.roomId, this.res, this.error});

  @override
  final String? roomId;
  @override
  final String? res;
  @override
  final String? error;

  @override
  String toString() {
    return 'SocketState.waitingRoom(roomId: $roomId, res: $res, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocketStateWatingRoomImpl &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            (identical(other.res, res) || other.res == res) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, roomId, res, error);

  /// Create a copy of SocketState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SocketStateWatingRoomImplCopyWith<_$SocketStateWatingRoomImpl>
      get copyWith => __$$SocketStateWatingRoomImplCopyWithImpl<
          _$SocketStateWatingRoomImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic data) unknown,
    required TResult Function(bool connected, String? error) connectedToSocket,
    required TResult Function(UserPlayer player) playerInfo,
    required TResult Function(String? roomId, String? res, String? error)
        waitingRoom,
    required TResult Function(String starter, List<UserPlayer> players)
        startGame,
    required TResult Function(LineEntity line, String nextUserId)
        playerClickLine,
    required TResult Function(String? winnerId) gameOver,
  }) {
    return waitingRoom(roomId, res, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic data)? unknown,
    TResult? Function(bool connected, String? error)? connectedToSocket,
    TResult? Function(UserPlayer player)? playerInfo,
    TResult? Function(String? roomId, String? res, String? error)? waitingRoom,
    TResult? Function(String starter, List<UserPlayer> players)? startGame,
    TResult? Function(LineEntity line, String nextUserId)? playerClickLine,
    TResult? Function(String? winnerId)? gameOver,
  }) {
    return waitingRoom?.call(roomId, res, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic data)? unknown,
    TResult Function(bool connected, String? error)? connectedToSocket,
    TResult Function(UserPlayer player)? playerInfo,
    TResult Function(String? roomId, String? res, String? error)? waitingRoom,
    TResult Function(String starter, List<UserPlayer> players)? startGame,
    TResult Function(LineEntity line, String nextUserId)? playerClickLine,
    TResult Function(String? winnerId)? gameOver,
    required TResult orElse(),
  }) {
    if (waitingRoom != null) {
      return waitingRoom(roomId, res, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_SocketStateConnectedToSocket value)
        connectedToSocket,
    required TResult Function(_SocketStatePlayerInfo value) playerInfo,
    required TResult Function(_SocketStateWatingRoom value) waitingRoom,
    required TResult Function(_StartGame value) startGame,
    required TResult Function(_PlayerClickLine value) playerClickLine,
    required TResult Function(_GameOver value) gameOver,
  }) {
    return waitingRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_SocketStateConnectedToSocket value)? connectedToSocket,
    TResult? Function(_SocketStatePlayerInfo value)? playerInfo,
    TResult? Function(_SocketStateWatingRoom value)? waitingRoom,
    TResult? Function(_StartGame value)? startGame,
    TResult? Function(_PlayerClickLine value)? playerClickLine,
    TResult? Function(_GameOver value)? gameOver,
  }) {
    return waitingRoom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unknown value)? unknown,
    TResult Function(_SocketStateConnectedToSocket value)? connectedToSocket,
    TResult Function(_SocketStatePlayerInfo value)? playerInfo,
    TResult Function(_SocketStateWatingRoom value)? waitingRoom,
    TResult Function(_StartGame value)? startGame,
    TResult Function(_PlayerClickLine value)? playerClickLine,
    TResult Function(_GameOver value)? gameOver,
    required TResult orElse(),
  }) {
    if (waitingRoom != null) {
      return waitingRoom(this);
    }
    return orElse();
  }
}

abstract class _SocketStateWatingRoom implements SocketState {
  const factory _SocketStateWatingRoom(
      {final String? roomId,
      final String? res,
      final String? error}) = _$SocketStateWatingRoomImpl;

  String? get roomId;
  String? get res;
  String? get error;

  /// Create a copy of SocketState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SocketStateWatingRoomImplCopyWith<_$SocketStateWatingRoomImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StartGameImplCopyWith<$Res> {
  factory _$$StartGameImplCopyWith(
          _$StartGameImpl value, $Res Function(_$StartGameImpl) then) =
      __$$StartGameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String starter, List<UserPlayer> players});
}

/// @nodoc
class __$$StartGameImplCopyWithImpl<$Res>
    extends _$SocketStateCopyWithImpl<$Res, _$StartGameImpl>
    implements _$$StartGameImplCopyWith<$Res> {
  __$$StartGameImplCopyWithImpl(
      _$StartGameImpl _value, $Res Function(_$StartGameImpl) _then)
      : super(_value, _then);

  /// Create a copy of SocketState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? starter = null,
    Object? players = null,
  }) {
    return _then(_$StartGameImpl(
      starter: null == starter
          ? _value.starter
          : starter // ignore: cast_nullable_to_non_nullable
              as String,
      players: null == players
          ? _value._players
          : players // ignore: cast_nullable_to_non_nullable
              as List<UserPlayer>,
    ));
  }
}

/// @nodoc

class _$StartGameImpl implements _StartGame {
  const _$StartGameImpl(
      {required this.starter, required final List<UserPlayer> players})
      : _players = players;

  @override
  final String starter;
  final List<UserPlayer> _players;
  @override
  List<UserPlayer> get players {
    if (_players is EqualUnmodifiableListView) return _players;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_players);
  }

  @override
  String toString() {
    return 'SocketState.startGame(starter: $starter, players: $players)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartGameImpl &&
            (identical(other.starter, starter) || other.starter == starter) &&
            const DeepCollectionEquality().equals(other._players, _players));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, starter, const DeepCollectionEquality().hash(_players));

  /// Create a copy of SocketState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StartGameImplCopyWith<_$StartGameImpl> get copyWith =>
      __$$StartGameImplCopyWithImpl<_$StartGameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic data) unknown,
    required TResult Function(bool connected, String? error) connectedToSocket,
    required TResult Function(UserPlayer player) playerInfo,
    required TResult Function(String? roomId, String? res, String? error)
        waitingRoom,
    required TResult Function(String starter, List<UserPlayer> players)
        startGame,
    required TResult Function(LineEntity line, String nextUserId)
        playerClickLine,
    required TResult Function(String? winnerId) gameOver,
  }) {
    return startGame(starter, players);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic data)? unknown,
    TResult? Function(bool connected, String? error)? connectedToSocket,
    TResult? Function(UserPlayer player)? playerInfo,
    TResult? Function(String? roomId, String? res, String? error)? waitingRoom,
    TResult? Function(String starter, List<UserPlayer> players)? startGame,
    TResult? Function(LineEntity line, String nextUserId)? playerClickLine,
    TResult? Function(String? winnerId)? gameOver,
  }) {
    return startGame?.call(starter, players);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic data)? unknown,
    TResult Function(bool connected, String? error)? connectedToSocket,
    TResult Function(UserPlayer player)? playerInfo,
    TResult Function(String? roomId, String? res, String? error)? waitingRoom,
    TResult Function(String starter, List<UserPlayer> players)? startGame,
    TResult Function(LineEntity line, String nextUserId)? playerClickLine,
    TResult Function(String? winnerId)? gameOver,
    required TResult orElse(),
  }) {
    if (startGame != null) {
      return startGame(starter, players);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_SocketStateConnectedToSocket value)
        connectedToSocket,
    required TResult Function(_SocketStatePlayerInfo value) playerInfo,
    required TResult Function(_SocketStateWatingRoom value) waitingRoom,
    required TResult Function(_StartGame value) startGame,
    required TResult Function(_PlayerClickLine value) playerClickLine,
    required TResult Function(_GameOver value) gameOver,
  }) {
    return startGame(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_SocketStateConnectedToSocket value)? connectedToSocket,
    TResult? Function(_SocketStatePlayerInfo value)? playerInfo,
    TResult? Function(_SocketStateWatingRoom value)? waitingRoom,
    TResult? Function(_StartGame value)? startGame,
    TResult? Function(_PlayerClickLine value)? playerClickLine,
    TResult? Function(_GameOver value)? gameOver,
  }) {
    return startGame?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unknown value)? unknown,
    TResult Function(_SocketStateConnectedToSocket value)? connectedToSocket,
    TResult Function(_SocketStatePlayerInfo value)? playerInfo,
    TResult Function(_SocketStateWatingRoom value)? waitingRoom,
    TResult Function(_StartGame value)? startGame,
    TResult Function(_PlayerClickLine value)? playerClickLine,
    TResult Function(_GameOver value)? gameOver,
    required TResult orElse(),
  }) {
    if (startGame != null) {
      return startGame(this);
    }
    return orElse();
  }
}

abstract class _StartGame implements SocketState {
  const factory _StartGame(
      {required final String starter,
      required final List<UserPlayer> players}) = _$StartGameImpl;

  String get starter;
  List<UserPlayer> get players;

  /// Create a copy of SocketState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StartGameImplCopyWith<_$StartGameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlayerClickLineImplCopyWith<$Res> {
  factory _$$PlayerClickLineImplCopyWith(_$PlayerClickLineImpl value,
          $Res Function(_$PlayerClickLineImpl) then) =
      __$$PlayerClickLineImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LineEntity line, String nextUserId});

  $LineEntityCopyWith<$Res> get line;
}

/// @nodoc
class __$$PlayerClickLineImplCopyWithImpl<$Res>
    extends _$SocketStateCopyWithImpl<$Res, _$PlayerClickLineImpl>
    implements _$$PlayerClickLineImplCopyWith<$Res> {
  __$$PlayerClickLineImplCopyWithImpl(
      _$PlayerClickLineImpl _value, $Res Function(_$PlayerClickLineImpl) _then)
      : super(_value, _then);

  /// Create a copy of SocketState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? line = null,
    Object? nextUserId = null,
  }) {
    return _then(_$PlayerClickLineImpl(
      line: null == line
          ? _value.line
          : line // ignore: cast_nullable_to_non_nullable
              as LineEntity,
      nextUserId: null == nextUserId
          ? _value.nextUserId
          : nextUserId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of SocketState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LineEntityCopyWith<$Res> get line {
    return $LineEntityCopyWith<$Res>(_value.line, (value) {
      return _then(_value.copyWith(line: value));
    });
  }
}

/// @nodoc

class _$PlayerClickLineImpl implements _PlayerClickLine {
  const _$PlayerClickLineImpl({required this.line, required this.nextUserId});

  @override
  final LineEntity line;
  @override
  final String nextUserId;

  @override
  String toString() {
    return 'SocketState.playerClickLine(line: $line, nextUserId: $nextUserId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerClickLineImpl &&
            (identical(other.line, line) || other.line == line) &&
            (identical(other.nextUserId, nextUserId) ||
                other.nextUserId == nextUserId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, line, nextUserId);

  /// Create a copy of SocketState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerClickLineImplCopyWith<_$PlayerClickLineImpl> get copyWith =>
      __$$PlayerClickLineImplCopyWithImpl<_$PlayerClickLineImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic data) unknown,
    required TResult Function(bool connected, String? error) connectedToSocket,
    required TResult Function(UserPlayer player) playerInfo,
    required TResult Function(String? roomId, String? res, String? error)
        waitingRoom,
    required TResult Function(String starter, List<UserPlayer> players)
        startGame,
    required TResult Function(LineEntity line, String nextUserId)
        playerClickLine,
    required TResult Function(String? winnerId) gameOver,
  }) {
    return playerClickLine(line, nextUserId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic data)? unknown,
    TResult? Function(bool connected, String? error)? connectedToSocket,
    TResult? Function(UserPlayer player)? playerInfo,
    TResult? Function(String? roomId, String? res, String? error)? waitingRoom,
    TResult? Function(String starter, List<UserPlayer> players)? startGame,
    TResult? Function(LineEntity line, String nextUserId)? playerClickLine,
    TResult? Function(String? winnerId)? gameOver,
  }) {
    return playerClickLine?.call(line, nextUserId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic data)? unknown,
    TResult Function(bool connected, String? error)? connectedToSocket,
    TResult Function(UserPlayer player)? playerInfo,
    TResult Function(String? roomId, String? res, String? error)? waitingRoom,
    TResult Function(String starter, List<UserPlayer> players)? startGame,
    TResult Function(LineEntity line, String nextUserId)? playerClickLine,
    TResult Function(String? winnerId)? gameOver,
    required TResult orElse(),
  }) {
    if (playerClickLine != null) {
      return playerClickLine(line, nextUserId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_SocketStateConnectedToSocket value)
        connectedToSocket,
    required TResult Function(_SocketStatePlayerInfo value) playerInfo,
    required TResult Function(_SocketStateWatingRoom value) waitingRoom,
    required TResult Function(_StartGame value) startGame,
    required TResult Function(_PlayerClickLine value) playerClickLine,
    required TResult Function(_GameOver value) gameOver,
  }) {
    return playerClickLine(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_SocketStateConnectedToSocket value)? connectedToSocket,
    TResult? Function(_SocketStatePlayerInfo value)? playerInfo,
    TResult? Function(_SocketStateWatingRoom value)? waitingRoom,
    TResult? Function(_StartGame value)? startGame,
    TResult? Function(_PlayerClickLine value)? playerClickLine,
    TResult? Function(_GameOver value)? gameOver,
  }) {
    return playerClickLine?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unknown value)? unknown,
    TResult Function(_SocketStateConnectedToSocket value)? connectedToSocket,
    TResult Function(_SocketStatePlayerInfo value)? playerInfo,
    TResult Function(_SocketStateWatingRoom value)? waitingRoom,
    TResult Function(_StartGame value)? startGame,
    TResult Function(_PlayerClickLine value)? playerClickLine,
    TResult Function(_GameOver value)? gameOver,
    required TResult orElse(),
  }) {
    if (playerClickLine != null) {
      return playerClickLine(this);
    }
    return orElse();
  }
}

abstract class _PlayerClickLine implements SocketState {
  const factory _PlayerClickLine(
      {required final LineEntity line,
      required final String nextUserId}) = _$PlayerClickLineImpl;

  LineEntity get line;
  String get nextUserId;

  /// Create a copy of SocketState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayerClickLineImplCopyWith<_$PlayerClickLineImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GameOverImplCopyWith<$Res> {
  factory _$$GameOverImplCopyWith(
          _$GameOverImpl value, $Res Function(_$GameOverImpl) then) =
      __$$GameOverImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? winnerId});
}

/// @nodoc
class __$$GameOverImplCopyWithImpl<$Res>
    extends _$SocketStateCopyWithImpl<$Res, _$GameOverImpl>
    implements _$$GameOverImplCopyWith<$Res> {
  __$$GameOverImplCopyWithImpl(
      _$GameOverImpl _value, $Res Function(_$GameOverImpl) _then)
      : super(_value, _then);

  /// Create a copy of SocketState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? winnerId = freezed,
  }) {
    return _then(_$GameOverImpl(
      winnerId: freezed == winnerId
          ? _value.winnerId
          : winnerId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GameOverImpl implements _GameOver {
  const _$GameOverImpl({required this.winnerId});

  @override
  final String? winnerId;

  @override
  String toString() {
    return 'SocketState.gameOver(winnerId: $winnerId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameOverImpl &&
            (identical(other.winnerId, winnerId) ||
                other.winnerId == winnerId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, winnerId);

  /// Create a copy of SocketState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameOverImplCopyWith<_$GameOverImpl> get copyWith =>
      __$$GameOverImplCopyWithImpl<_$GameOverImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic data) unknown,
    required TResult Function(bool connected, String? error) connectedToSocket,
    required TResult Function(UserPlayer player) playerInfo,
    required TResult Function(String? roomId, String? res, String? error)
        waitingRoom,
    required TResult Function(String starter, List<UserPlayer> players)
        startGame,
    required TResult Function(LineEntity line, String nextUserId)
        playerClickLine,
    required TResult Function(String? winnerId) gameOver,
  }) {
    return gameOver(winnerId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic data)? unknown,
    TResult? Function(bool connected, String? error)? connectedToSocket,
    TResult? Function(UserPlayer player)? playerInfo,
    TResult? Function(String? roomId, String? res, String? error)? waitingRoom,
    TResult? Function(String starter, List<UserPlayer> players)? startGame,
    TResult? Function(LineEntity line, String nextUserId)? playerClickLine,
    TResult? Function(String? winnerId)? gameOver,
  }) {
    return gameOver?.call(winnerId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic data)? unknown,
    TResult Function(bool connected, String? error)? connectedToSocket,
    TResult Function(UserPlayer player)? playerInfo,
    TResult Function(String? roomId, String? res, String? error)? waitingRoom,
    TResult Function(String starter, List<UserPlayer> players)? startGame,
    TResult Function(LineEntity line, String nextUserId)? playerClickLine,
    TResult Function(String? winnerId)? gameOver,
    required TResult orElse(),
  }) {
    if (gameOver != null) {
      return gameOver(winnerId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_SocketStateConnectedToSocket value)
        connectedToSocket,
    required TResult Function(_SocketStatePlayerInfo value) playerInfo,
    required TResult Function(_SocketStateWatingRoom value) waitingRoom,
    required TResult Function(_StartGame value) startGame,
    required TResult Function(_PlayerClickLine value) playerClickLine,
    required TResult Function(_GameOver value) gameOver,
  }) {
    return gameOver(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_SocketStateConnectedToSocket value)? connectedToSocket,
    TResult? Function(_SocketStatePlayerInfo value)? playerInfo,
    TResult? Function(_SocketStateWatingRoom value)? waitingRoom,
    TResult? Function(_StartGame value)? startGame,
    TResult? Function(_PlayerClickLine value)? playerClickLine,
    TResult? Function(_GameOver value)? gameOver,
  }) {
    return gameOver?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unknown value)? unknown,
    TResult Function(_SocketStateConnectedToSocket value)? connectedToSocket,
    TResult Function(_SocketStatePlayerInfo value)? playerInfo,
    TResult Function(_SocketStateWatingRoom value)? waitingRoom,
    TResult Function(_StartGame value)? startGame,
    TResult Function(_PlayerClickLine value)? playerClickLine,
    TResult Function(_GameOver value)? gameOver,
    required TResult orElse(),
  }) {
    if (gameOver != null) {
      return gameOver(this);
    }
    return orElse();
  }
}

abstract class _GameOver implements SocketState {
  const factory _GameOver({required final String? winnerId}) = _$GameOverImpl;

  String? get winnerId;

  /// Create a copy of SocketState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameOverImplCopyWith<_$GameOverImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
