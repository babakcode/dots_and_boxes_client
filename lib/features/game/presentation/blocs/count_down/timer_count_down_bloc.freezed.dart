// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timer_count_down_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TimerCountDownEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) introCountDownStart,
    required TResult Function(int duration) introTicked,
    required TResult Function(int duration) userTurnStart,
    required TResult Function(int duration) userTurnTicked,
    required TResult Function() resetUserTimeout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int duration)? introCountDownStart,
    TResult? Function(int duration)? introTicked,
    TResult? Function(int duration)? userTurnStart,
    TResult? Function(int duration)? userTurnTicked,
    TResult? Function()? resetUserTimeout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? introCountDownStart,
    TResult Function(int duration)? introTicked,
    TResult Function(int duration)? userTurnStart,
    TResult Function(int duration)? userTurnTicked,
    TResult Function()? resetUserTimeout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) introCountDownStart,
    required TResult Function(_IntroTicked value) introTicked,
    required TResult Function(_StartUserTurn value) userTurnStart,
    required TResult Function(_UserCountDownTickedEvent value) userTurnTicked,
    required TResult Function(_UserCountDownResetEvent value) resetUserTimeout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? introCountDownStart,
    TResult? Function(_IntroTicked value)? introTicked,
    TResult? Function(_StartUserTurn value)? userTurnStart,
    TResult? Function(_UserCountDownTickedEvent value)? userTurnTicked,
    TResult? Function(_UserCountDownResetEvent value)? resetUserTimeout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? introCountDownStart,
    TResult Function(_IntroTicked value)? introTicked,
    TResult Function(_StartUserTurn value)? userTurnStart,
    TResult Function(_UserCountDownTickedEvent value)? userTurnTicked,
    TResult Function(_UserCountDownResetEvent value)? resetUserTimeout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimerCountDownEventCopyWith<$Res> {
  factory $TimerCountDownEventCopyWith(
          TimerCountDownEvent value, $Res Function(TimerCountDownEvent) then) =
      _$TimerCountDownEventCopyWithImpl<$Res, TimerCountDownEvent>;
}

/// @nodoc
class _$TimerCountDownEventCopyWithImpl<$Res, $Val extends TimerCountDownEvent>
    implements $TimerCountDownEventCopyWith<$Res> {
  _$TimerCountDownEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimerCountDownEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int duration});
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$TimerCountDownEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimerCountDownEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_$StartedImpl(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl({required this.duration});

  @override
  final int duration;

  @override
  String toString() {
    return 'TimerCountDownEvent.introCountDownStart(duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedImpl &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration);

  /// Create a copy of TimerCountDownEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) introCountDownStart,
    required TResult Function(int duration) introTicked,
    required TResult Function(int duration) userTurnStart,
    required TResult Function(int duration) userTurnTicked,
    required TResult Function() resetUserTimeout,
  }) {
    return introCountDownStart(duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int duration)? introCountDownStart,
    TResult? Function(int duration)? introTicked,
    TResult? Function(int duration)? userTurnStart,
    TResult? Function(int duration)? userTurnTicked,
    TResult? Function()? resetUserTimeout,
  }) {
    return introCountDownStart?.call(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? introCountDownStart,
    TResult Function(int duration)? introTicked,
    TResult Function(int duration)? userTurnStart,
    TResult Function(int duration)? userTurnTicked,
    TResult Function()? resetUserTimeout,
    required TResult orElse(),
  }) {
    if (introCountDownStart != null) {
      return introCountDownStart(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) introCountDownStart,
    required TResult Function(_IntroTicked value) introTicked,
    required TResult Function(_StartUserTurn value) userTurnStart,
    required TResult Function(_UserCountDownTickedEvent value) userTurnTicked,
    required TResult Function(_UserCountDownResetEvent value) resetUserTimeout,
  }) {
    return introCountDownStart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? introCountDownStart,
    TResult? Function(_IntroTicked value)? introTicked,
    TResult? Function(_StartUserTurn value)? userTurnStart,
    TResult? Function(_UserCountDownTickedEvent value)? userTurnTicked,
    TResult? Function(_UserCountDownResetEvent value)? resetUserTimeout,
  }) {
    return introCountDownStart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? introCountDownStart,
    TResult Function(_IntroTicked value)? introTicked,
    TResult Function(_StartUserTurn value)? userTurnStart,
    TResult Function(_UserCountDownTickedEvent value)? userTurnTicked,
    TResult Function(_UserCountDownResetEvent value)? resetUserTimeout,
    required TResult orElse(),
  }) {
    if (introCountDownStart != null) {
      return introCountDownStart(this);
    }
    return orElse();
  }
}

abstract class _Started implements TimerCountDownEvent {
  const factory _Started({required final int duration}) = _$StartedImpl;

  int get duration;

  /// Create a copy of TimerCountDownEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IntroTickedImplCopyWith<$Res> {
  factory _$$IntroTickedImplCopyWith(
          _$IntroTickedImpl value, $Res Function(_$IntroTickedImpl) then) =
      __$$IntroTickedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int duration});
}

/// @nodoc
class __$$IntroTickedImplCopyWithImpl<$Res>
    extends _$TimerCountDownEventCopyWithImpl<$Res, _$IntroTickedImpl>
    implements _$$IntroTickedImplCopyWith<$Res> {
  __$$IntroTickedImplCopyWithImpl(
      _$IntroTickedImpl _value, $Res Function(_$IntroTickedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimerCountDownEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_$IntroTickedImpl(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$IntroTickedImpl implements _IntroTicked {
  const _$IntroTickedImpl({required this.duration});

  @override
  final int duration;

  @override
  String toString() {
    return 'TimerCountDownEvent.introTicked(duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IntroTickedImpl &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration);

  /// Create a copy of TimerCountDownEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IntroTickedImplCopyWith<_$IntroTickedImpl> get copyWith =>
      __$$IntroTickedImplCopyWithImpl<_$IntroTickedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) introCountDownStart,
    required TResult Function(int duration) introTicked,
    required TResult Function(int duration) userTurnStart,
    required TResult Function(int duration) userTurnTicked,
    required TResult Function() resetUserTimeout,
  }) {
    return introTicked(duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int duration)? introCountDownStart,
    TResult? Function(int duration)? introTicked,
    TResult? Function(int duration)? userTurnStart,
    TResult? Function(int duration)? userTurnTicked,
    TResult? Function()? resetUserTimeout,
  }) {
    return introTicked?.call(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? introCountDownStart,
    TResult Function(int duration)? introTicked,
    TResult Function(int duration)? userTurnStart,
    TResult Function(int duration)? userTurnTicked,
    TResult Function()? resetUserTimeout,
    required TResult orElse(),
  }) {
    if (introTicked != null) {
      return introTicked(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) introCountDownStart,
    required TResult Function(_IntroTicked value) introTicked,
    required TResult Function(_StartUserTurn value) userTurnStart,
    required TResult Function(_UserCountDownTickedEvent value) userTurnTicked,
    required TResult Function(_UserCountDownResetEvent value) resetUserTimeout,
  }) {
    return introTicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? introCountDownStart,
    TResult? Function(_IntroTicked value)? introTicked,
    TResult? Function(_StartUserTurn value)? userTurnStart,
    TResult? Function(_UserCountDownTickedEvent value)? userTurnTicked,
    TResult? Function(_UserCountDownResetEvent value)? resetUserTimeout,
  }) {
    return introTicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? introCountDownStart,
    TResult Function(_IntroTicked value)? introTicked,
    TResult Function(_StartUserTurn value)? userTurnStart,
    TResult Function(_UserCountDownTickedEvent value)? userTurnTicked,
    TResult Function(_UserCountDownResetEvent value)? resetUserTimeout,
    required TResult orElse(),
  }) {
    if (introTicked != null) {
      return introTicked(this);
    }
    return orElse();
  }
}

abstract class _IntroTicked implements TimerCountDownEvent {
  const factory _IntroTicked({required final int duration}) = _$IntroTickedImpl;

  int get duration;

  /// Create a copy of TimerCountDownEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IntroTickedImplCopyWith<_$IntroTickedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StartUserTurnImplCopyWith<$Res> {
  factory _$$StartUserTurnImplCopyWith(
          _$StartUserTurnImpl value, $Res Function(_$StartUserTurnImpl) then) =
      __$$StartUserTurnImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int duration});
}

/// @nodoc
class __$$StartUserTurnImplCopyWithImpl<$Res>
    extends _$TimerCountDownEventCopyWithImpl<$Res, _$StartUserTurnImpl>
    implements _$$StartUserTurnImplCopyWith<$Res> {
  __$$StartUserTurnImplCopyWithImpl(
      _$StartUserTurnImpl _value, $Res Function(_$StartUserTurnImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimerCountDownEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_$StartUserTurnImpl(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$StartUserTurnImpl implements _StartUserTurn {
  const _$StartUserTurnImpl({required this.duration});

  @override
  final int duration;

  @override
  String toString() {
    return 'TimerCountDownEvent.userTurnStart(duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartUserTurnImpl &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration);

  /// Create a copy of TimerCountDownEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StartUserTurnImplCopyWith<_$StartUserTurnImpl> get copyWith =>
      __$$StartUserTurnImplCopyWithImpl<_$StartUserTurnImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) introCountDownStart,
    required TResult Function(int duration) introTicked,
    required TResult Function(int duration) userTurnStart,
    required TResult Function(int duration) userTurnTicked,
    required TResult Function() resetUserTimeout,
  }) {
    return userTurnStart(duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int duration)? introCountDownStart,
    TResult? Function(int duration)? introTicked,
    TResult? Function(int duration)? userTurnStart,
    TResult? Function(int duration)? userTurnTicked,
    TResult? Function()? resetUserTimeout,
  }) {
    return userTurnStart?.call(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? introCountDownStart,
    TResult Function(int duration)? introTicked,
    TResult Function(int duration)? userTurnStart,
    TResult Function(int duration)? userTurnTicked,
    TResult Function()? resetUserTimeout,
    required TResult orElse(),
  }) {
    if (userTurnStart != null) {
      return userTurnStart(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) introCountDownStart,
    required TResult Function(_IntroTicked value) introTicked,
    required TResult Function(_StartUserTurn value) userTurnStart,
    required TResult Function(_UserCountDownTickedEvent value) userTurnTicked,
    required TResult Function(_UserCountDownResetEvent value) resetUserTimeout,
  }) {
    return userTurnStart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? introCountDownStart,
    TResult? Function(_IntroTicked value)? introTicked,
    TResult? Function(_StartUserTurn value)? userTurnStart,
    TResult? Function(_UserCountDownTickedEvent value)? userTurnTicked,
    TResult? Function(_UserCountDownResetEvent value)? resetUserTimeout,
  }) {
    return userTurnStart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? introCountDownStart,
    TResult Function(_IntroTicked value)? introTicked,
    TResult Function(_StartUserTurn value)? userTurnStart,
    TResult Function(_UserCountDownTickedEvent value)? userTurnTicked,
    TResult Function(_UserCountDownResetEvent value)? resetUserTimeout,
    required TResult orElse(),
  }) {
    if (userTurnStart != null) {
      return userTurnStart(this);
    }
    return orElse();
  }
}

abstract class _StartUserTurn implements TimerCountDownEvent {
  const factory _StartUserTurn({required final int duration}) =
      _$StartUserTurnImpl;

  int get duration;

  /// Create a copy of TimerCountDownEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StartUserTurnImplCopyWith<_$StartUserTurnImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserCountDownTickedEventImplCopyWith<$Res> {
  factory _$$UserCountDownTickedEventImplCopyWith(
          _$UserCountDownTickedEventImpl value,
          $Res Function(_$UserCountDownTickedEventImpl) then) =
      __$$UserCountDownTickedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int duration});
}

/// @nodoc
class __$$UserCountDownTickedEventImplCopyWithImpl<$Res>
    extends _$TimerCountDownEventCopyWithImpl<$Res,
        _$UserCountDownTickedEventImpl>
    implements _$$UserCountDownTickedEventImplCopyWith<$Res> {
  __$$UserCountDownTickedEventImplCopyWithImpl(
      _$UserCountDownTickedEventImpl _value,
      $Res Function(_$UserCountDownTickedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimerCountDownEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_$UserCountDownTickedEventImpl(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UserCountDownTickedEventImpl implements _UserCountDownTickedEvent {
  const _$UserCountDownTickedEventImpl({required this.duration});

  @override
  final int duration;

  @override
  String toString() {
    return 'TimerCountDownEvent.userTurnTicked(duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserCountDownTickedEventImpl &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration);

  /// Create a copy of TimerCountDownEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserCountDownTickedEventImplCopyWith<_$UserCountDownTickedEventImpl>
      get copyWith => __$$UserCountDownTickedEventImplCopyWithImpl<
          _$UserCountDownTickedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) introCountDownStart,
    required TResult Function(int duration) introTicked,
    required TResult Function(int duration) userTurnStart,
    required TResult Function(int duration) userTurnTicked,
    required TResult Function() resetUserTimeout,
  }) {
    return userTurnTicked(duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int duration)? introCountDownStart,
    TResult? Function(int duration)? introTicked,
    TResult? Function(int duration)? userTurnStart,
    TResult? Function(int duration)? userTurnTicked,
    TResult? Function()? resetUserTimeout,
  }) {
    return userTurnTicked?.call(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? introCountDownStart,
    TResult Function(int duration)? introTicked,
    TResult Function(int duration)? userTurnStart,
    TResult Function(int duration)? userTurnTicked,
    TResult Function()? resetUserTimeout,
    required TResult orElse(),
  }) {
    if (userTurnTicked != null) {
      return userTurnTicked(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) introCountDownStart,
    required TResult Function(_IntroTicked value) introTicked,
    required TResult Function(_StartUserTurn value) userTurnStart,
    required TResult Function(_UserCountDownTickedEvent value) userTurnTicked,
    required TResult Function(_UserCountDownResetEvent value) resetUserTimeout,
  }) {
    return userTurnTicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? introCountDownStart,
    TResult? Function(_IntroTicked value)? introTicked,
    TResult? Function(_StartUserTurn value)? userTurnStart,
    TResult? Function(_UserCountDownTickedEvent value)? userTurnTicked,
    TResult? Function(_UserCountDownResetEvent value)? resetUserTimeout,
  }) {
    return userTurnTicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? introCountDownStart,
    TResult Function(_IntroTicked value)? introTicked,
    TResult Function(_StartUserTurn value)? userTurnStart,
    TResult Function(_UserCountDownTickedEvent value)? userTurnTicked,
    TResult Function(_UserCountDownResetEvent value)? resetUserTimeout,
    required TResult orElse(),
  }) {
    if (userTurnTicked != null) {
      return userTurnTicked(this);
    }
    return orElse();
  }
}

abstract class _UserCountDownTickedEvent implements TimerCountDownEvent {
  const factory _UserCountDownTickedEvent({required final int duration}) =
      _$UserCountDownTickedEventImpl;

  int get duration;

  /// Create a copy of TimerCountDownEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserCountDownTickedEventImplCopyWith<_$UserCountDownTickedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserCountDownResetEventImplCopyWith<$Res> {
  factory _$$UserCountDownResetEventImplCopyWith(
          _$UserCountDownResetEventImpl value,
          $Res Function(_$UserCountDownResetEventImpl) then) =
      __$$UserCountDownResetEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserCountDownResetEventImplCopyWithImpl<$Res>
    extends _$TimerCountDownEventCopyWithImpl<$Res,
        _$UserCountDownResetEventImpl>
    implements _$$UserCountDownResetEventImplCopyWith<$Res> {
  __$$UserCountDownResetEventImplCopyWithImpl(
      _$UserCountDownResetEventImpl _value,
      $Res Function(_$UserCountDownResetEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimerCountDownEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UserCountDownResetEventImpl implements _UserCountDownResetEvent {
  const _$UserCountDownResetEventImpl();

  @override
  String toString() {
    return 'TimerCountDownEvent.resetUserTimeout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserCountDownResetEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) introCountDownStart,
    required TResult Function(int duration) introTicked,
    required TResult Function(int duration) userTurnStart,
    required TResult Function(int duration) userTurnTicked,
    required TResult Function() resetUserTimeout,
  }) {
    return resetUserTimeout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int duration)? introCountDownStart,
    TResult? Function(int duration)? introTicked,
    TResult? Function(int duration)? userTurnStart,
    TResult? Function(int duration)? userTurnTicked,
    TResult? Function()? resetUserTimeout,
  }) {
    return resetUserTimeout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? introCountDownStart,
    TResult Function(int duration)? introTicked,
    TResult Function(int duration)? userTurnStart,
    TResult Function(int duration)? userTurnTicked,
    TResult Function()? resetUserTimeout,
    required TResult orElse(),
  }) {
    if (resetUserTimeout != null) {
      return resetUserTimeout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) introCountDownStart,
    required TResult Function(_IntroTicked value) introTicked,
    required TResult Function(_StartUserTurn value) userTurnStart,
    required TResult Function(_UserCountDownTickedEvent value) userTurnTicked,
    required TResult Function(_UserCountDownResetEvent value) resetUserTimeout,
  }) {
    return resetUserTimeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? introCountDownStart,
    TResult? Function(_IntroTicked value)? introTicked,
    TResult? Function(_StartUserTurn value)? userTurnStart,
    TResult? Function(_UserCountDownTickedEvent value)? userTurnTicked,
    TResult? Function(_UserCountDownResetEvent value)? resetUserTimeout,
  }) {
    return resetUserTimeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? introCountDownStart,
    TResult Function(_IntroTicked value)? introTicked,
    TResult Function(_StartUserTurn value)? userTurnStart,
    TResult Function(_UserCountDownTickedEvent value)? userTurnTicked,
    TResult Function(_UserCountDownResetEvent value)? resetUserTimeout,
    required TResult orElse(),
  }) {
    if (resetUserTimeout != null) {
      return resetUserTimeout(this);
    }
    return orElse();
  }
}

abstract class _UserCountDownResetEvent implements TimerCountDownEvent {
  const factory _UserCountDownResetEvent() = _$UserCountDownResetEventImpl;
}

/// @nodoc
mixin _$TimerCountDownState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) initial,
    required TResult Function(int duration) inProgressIntro,
    required TResult Function() completeIntro,
    required TResult Function(int duration) inProgressUserTurn,
    required TResult Function() completeUserTurn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int duration)? initial,
    TResult? Function(int duration)? inProgressIntro,
    TResult? Function()? completeIntro,
    TResult? Function(int duration)? inProgressUserTurn,
    TResult? Function()? completeUserTurn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? initial,
    TResult Function(int duration)? inProgressIntro,
    TResult Function()? completeIntro,
    TResult Function(int duration)? inProgressUserTurn,
    TResult Function()? completeUserTurn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgressIntro value) inProgressIntro,
    required TResult Function(_Completed value) completeIntro,
    required TResult Function(_InProgressUserTurn value) inProgressUserTurn,
    required TResult Function(_CompletedUserTurn value) completeUserTurn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgressIntro value)? inProgressIntro,
    TResult? Function(_Completed value)? completeIntro,
    TResult? Function(_InProgressUserTurn value)? inProgressUserTurn,
    TResult? Function(_CompletedUserTurn value)? completeUserTurn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgressIntro value)? inProgressIntro,
    TResult Function(_Completed value)? completeIntro,
    TResult Function(_InProgressUserTurn value)? inProgressUserTurn,
    TResult Function(_CompletedUserTurn value)? completeUserTurn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimerCountDownStateCopyWith<$Res> {
  factory $TimerCountDownStateCopyWith(
          TimerCountDownState value, $Res Function(TimerCountDownState) then) =
      _$TimerCountDownStateCopyWithImpl<$Res, TimerCountDownState>;
}

/// @nodoc
class _$TimerCountDownStateCopyWithImpl<$Res, $Val extends TimerCountDownState>
    implements $TimerCountDownStateCopyWith<$Res> {
  _$TimerCountDownStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimerCountDownState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int duration});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$TimerCountDownStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimerCountDownState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_$InitialImpl(
      null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(this.duration);

  @override
  final int duration;

  @override
  String toString() {
    return 'TimerCountDownState.initial(duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration);

  /// Create a copy of TimerCountDownState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) initial,
    required TResult Function(int duration) inProgressIntro,
    required TResult Function() completeIntro,
    required TResult Function(int duration) inProgressUserTurn,
    required TResult Function() completeUserTurn,
  }) {
    return initial(duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int duration)? initial,
    TResult? Function(int duration)? inProgressIntro,
    TResult? Function()? completeIntro,
    TResult? Function(int duration)? inProgressUserTurn,
    TResult? Function()? completeUserTurn,
  }) {
    return initial?.call(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? initial,
    TResult Function(int duration)? inProgressIntro,
    TResult Function()? completeIntro,
    TResult Function(int duration)? inProgressUserTurn,
    TResult Function()? completeUserTurn,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgressIntro value) inProgressIntro,
    required TResult Function(_Completed value) completeIntro,
    required TResult Function(_InProgressUserTurn value) inProgressUserTurn,
    required TResult Function(_CompletedUserTurn value) completeUserTurn,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgressIntro value)? inProgressIntro,
    TResult? Function(_Completed value)? completeIntro,
    TResult? Function(_InProgressUserTurn value)? inProgressUserTurn,
    TResult? Function(_CompletedUserTurn value)? completeUserTurn,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgressIntro value)? inProgressIntro,
    TResult Function(_Completed value)? completeIntro,
    TResult Function(_InProgressUserTurn value)? inProgressUserTurn,
    TResult Function(_CompletedUserTurn value)? completeUserTurn,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TimerCountDownState {
  const factory _Initial(final int duration) = _$InitialImpl;

  int get duration;

  /// Create a copy of TimerCountDownState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InProgressIntroImplCopyWith<$Res> {
  factory _$$InProgressIntroImplCopyWith(_$InProgressIntroImpl value,
          $Res Function(_$InProgressIntroImpl) then) =
      __$$InProgressIntroImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int duration});
}

/// @nodoc
class __$$InProgressIntroImplCopyWithImpl<$Res>
    extends _$TimerCountDownStateCopyWithImpl<$Res, _$InProgressIntroImpl>
    implements _$$InProgressIntroImplCopyWith<$Res> {
  __$$InProgressIntroImplCopyWithImpl(
      _$InProgressIntroImpl _value, $Res Function(_$InProgressIntroImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimerCountDownState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_$InProgressIntroImpl(
      null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$InProgressIntroImpl implements _InProgressIntro {
  const _$InProgressIntroImpl(this.duration);

  @override
  final int duration;

  @override
  String toString() {
    return 'TimerCountDownState.inProgressIntro(duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InProgressIntroImpl &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration);

  /// Create a copy of TimerCountDownState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InProgressIntroImplCopyWith<_$InProgressIntroImpl> get copyWith =>
      __$$InProgressIntroImplCopyWithImpl<_$InProgressIntroImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) initial,
    required TResult Function(int duration) inProgressIntro,
    required TResult Function() completeIntro,
    required TResult Function(int duration) inProgressUserTurn,
    required TResult Function() completeUserTurn,
  }) {
    return inProgressIntro(duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int duration)? initial,
    TResult? Function(int duration)? inProgressIntro,
    TResult? Function()? completeIntro,
    TResult? Function(int duration)? inProgressUserTurn,
    TResult? Function()? completeUserTurn,
  }) {
    return inProgressIntro?.call(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? initial,
    TResult Function(int duration)? inProgressIntro,
    TResult Function()? completeIntro,
    TResult Function(int duration)? inProgressUserTurn,
    TResult Function()? completeUserTurn,
    required TResult orElse(),
  }) {
    if (inProgressIntro != null) {
      return inProgressIntro(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgressIntro value) inProgressIntro,
    required TResult Function(_Completed value) completeIntro,
    required TResult Function(_InProgressUserTurn value) inProgressUserTurn,
    required TResult Function(_CompletedUserTurn value) completeUserTurn,
  }) {
    return inProgressIntro(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgressIntro value)? inProgressIntro,
    TResult? Function(_Completed value)? completeIntro,
    TResult? Function(_InProgressUserTurn value)? inProgressUserTurn,
    TResult? Function(_CompletedUserTurn value)? completeUserTurn,
  }) {
    return inProgressIntro?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgressIntro value)? inProgressIntro,
    TResult Function(_Completed value)? completeIntro,
    TResult Function(_InProgressUserTurn value)? inProgressUserTurn,
    TResult Function(_CompletedUserTurn value)? completeUserTurn,
    required TResult orElse(),
  }) {
    if (inProgressIntro != null) {
      return inProgressIntro(this);
    }
    return orElse();
  }
}

abstract class _InProgressIntro implements TimerCountDownState {
  const factory _InProgressIntro(final int duration) = _$InProgressIntroImpl;

  int get duration;

  /// Create a copy of TimerCountDownState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InProgressIntroImplCopyWith<_$InProgressIntroImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CompletedImplCopyWith<$Res> {
  factory _$$CompletedImplCopyWith(
          _$CompletedImpl value, $Res Function(_$CompletedImpl) then) =
      __$$CompletedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CompletedImplCopyWithImpl<$Res>
    extends _$TimerCountDownStateCopyWithImpl<$Res, _$CompletedImpl>
    implements _$$CompletedImplCopyWith<$Res> {
  __$$CompletedImplCopyWithImpl(
      _$CompletedImpl _value, $Res Function(_$CompletedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimerCountDownState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CompletedImpl implements _Completed {
  const _$CompletedImpl();

  @override
  String toString() {
    return 'TimerCountDownState.completeIntro()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CompletedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) initial,
    required TResult Function(int duration) inProgressIntro,
    required TResult Function() completeIntro,
    required TResult Function(int duration) inProgressUserTurn,
    required TResult Function() completeUserTurn,
  }) {
    return completeIntro();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int duration)? initial,
    TResult? Function(int duration)? inProgressIntro,
    TResult? Function()? completeIntro,
    TResult? Function(int duration)? inProgressUserTurn,
    TResult? Function()? completeUserTurn,
  }) {
    return completeIntro?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? initial,
    TResult Function(int duration)? inProgressIntro,
    TResult Function()? completeIntro,
    TResult Function(int duration)? inProgressUserTurn,
    TResult Function()? completeUserTurn,
    required TResult orElse(),
  }) {
    if (completeIntro != null) {
      return completeIntro();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgressIntro value) inProgressIntro,
    required TResult Function(_Completed value) completeIntro,
    required TResult Function(_InProgressUserTurn value) inProgressUserTurn,
    required TResult Function(_CompletedUserTurn value) completeUserTurn,
  }) {
    return completeIntro(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgressIntro value)? inProgressIntro,
    TResult? Function(_Completed value)? completeIntro,
    TResult? Function(_InProgressUserTurn value)? inProgressUserTurn,
    TResult? Function(_CompletedUserTurn value)? completeUserTurn,
  }) {
    return completeIntro?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgressIntro value)? inProgressIntro,
    TResult Function(_Completed value)? completeIntro,
    TResult Function(_InProgressUserTurn value)? inProgressUserTurn,
    TResult Function(_CompletedUserTurn value)? completeUserTurn,
    required TResult orElse(),
  }) {
    if (completeIntro != null) {
      return completeIntro(this);
    }
    return orElse();
  }
}

abstract class _Completed implements TimerCountDownState {
  const factory _Completed() = _$CompletedImpl;
}

/// @nodoc
abstract class _$$InProgressUserTurnImplCopyWith<$Res> {
  factory _$$InProgressUserTurnImplCopyWith(_$InProgressUserTurnImpl value,
          $Res Function(_$InProgressUserTurnImpl) then) =
      __$$InProgressUserTurnImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int duration});
}

/// @nodoc
class __$$InProgressUserTurnImplCopyWithImpl<$Res>
    extends _$TimerCountDownStateCopyWithImpl<$Res, _$InProgressUserTurnImpl>
    implements _$$InProgressUserTurnImplCopyWith<$Res> {
  __$$InProgressUserTurnImplCopyWithImpl(_$InProgressUserTurnImpl _value,
      $Res Function(_$InProgressUserTurnImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimerCountDownState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_$InProgressUserTurnImpl(
      null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$InProgressUserTurnImpl implements _InProgressUserTurn {
  const _$InProgressUserTurnImpl(this.duration);

  @override
  final int duration;

  @override
  String toString() {
    return 'TimerCountDownState.inProgressUserTurn(duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InProgressUserTurnImpl &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration);

  /// Create a copy of TimerCountDownState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InProgressUserTurnImplCopyWith<_$InProgressUserTurnImpl> get copyWith =>
      __$$InProgressUserTurnImplCopyWithImpl<_$InProgressUserTurnImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) initial,
    required TResult Function(int duration) inProgressIntro,
    required TResult Function() completeIntro,
    required TResult Function(int duration) inProgressUserTurn,
    required TResult Function() completeUserTurn,
  }) {
    return inProgressUserTurn(duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int duration)? initial,
    TResult? Function(int duration)? inProgressIntro,
    TResult? Function()? completeIntro,
    TResult? Function(int duration)? inProgressUserTurn,
    TResult? Function()? completeUserTurn,
  }) {
    return inProgressUserTurn?.call(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? initial,
    TResult Function(int duration)? inProgressIntro,
    TResult Function()? completeIntro,
    TResult Function(int duration)? inProgressUserTurn,
    TResult Function()? completeUserTurn,
    required TResult orElse(),
  }) {
    if (inProgressUserTurn != null) {
      return inProgressUserTurn(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgressIntro value) inProgressIntro,
    required TResult Function(_Completed value) completeIntro,
    required TResult Function(_InProgressUserTurn value) inProgressUserTurn,
    required TResult Function(_CompletedUserTurn value) completeUserTurn,
  }) {
    return inProgressUserTurn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgressIntro value)? inProgressIntro,
    TResult? Function(_Completed value)? completeIntro,
    TResult? Function(_InProgressUserTurn value)? inProgressUserTurn,
    TResult? Function(_CompletedUserTurn value)? completeUserTurn,
  }) {
    return inProgressUserTurn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgressIntro value)? inProgressIntro,
    TResult Function(_Completed value)? completeIntro,
    TResult Function(_InProgressUserTurn value)? inProgressUserTurn,
    TResult Function(_CompletedUserTurn value)? completeUserTurn,
    required TResult orElse(),
  }) {
    if (inProgressUserTurn != null) {
      return inProgressUserTurn(this);
    }
    return orElse();
  }
}

abstract class _InProgressUserTurn implements TimerCountDownState {
  const factory _InProgressUserTurn(final int duration) =
      _$InProgressUserTurnImpl;

  int get duration;

  /// Create a copy of TimerCountDownState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InProgressUserTurnImplCopyWith<_$InProgressUserTurnImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CompletedUserTurnImplCopyWith<$Res> {
  factory _$$CompletedUserTurnImplCopyWith(_$CompletedUserTurnImpl value,
          $Res Function(_$CompletedUserTurnImpl) then) =
      __$$CompletedUserTurnImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CompletedUserTurnImplCopyWithImpl<$Res>
    extends _$TimerCountDownStateCopyWithImpl<$Res, _$CompletedUserTurnImpl>
    implements _$$CompletedUserTurnImplCopyWith<$Res> {
  __$$CompletedUserTurnImplCopyWithImpl(_$CompletedUserTurnImpl _value,
      $Res Function(_$CompletedUserTurnImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimerCountDownState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CompletedUserTurnImpl implements _CompletedUserTurn {
  const _$CompletedUserTurnImpl();

  @override
  String toString() {
    return 'TimerCountDownState.completeUserTurn()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CompletedUserTurnImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) initial,
    required TResult Function(int duration) inProgressIntro,
    required TResult Function() completeIntro,
    required TResult Function(int duration) inProgressUserTurn,
    required TResult Function() completeUserTurn,
  }) {
    return completeUserTurn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int duration)? initial,
    TResult? Function(int duration)? inProgressIntro,
    TResult? Function()? completeIntro,
    TResult? Function(int duration)? inProgressUserTurn,
    TResult? Function()? completeUserTurn,
  }) {
    return completeUserTurn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? initial,
    TResult Function(int duration)? inProgressIntro,
    TResult Function()? completeIntro,
    TResult Function(int duration)? inProgressUserTurn,
    TResult Function()? completeUserTurn,
    required TResult orElse(),
  }) {
    if (completeUserTurn != null) {
      return completeUserTurn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgressIntro value) inProgressIntro,
    required TResult Function(_Completed value) completeIntro,
    required TResult Function(_InProgressUserTurn value) inProgressUserTurn,
    required TResult Function(_CompletedUserTurn value) completeUserTurn,
  }) {
    return completeUserTurn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgressIntro value)? inProgressIntro,
    TResult? Function(_Completed value)? completeIntro,
    TResult? Function(_InProgressUserTurn value)? inProgressUserTurn,
    TResult? Function(_CompletedUserTurn value)? completeUserTurn,
  }) {
    return completeUserTurn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgressIntro value)? inProgressIntro,
    TResult Function(_Completed value)? completeIntro,
    TResult Function(_InProgressUserTurn value)? inProgressUserTurn,
    TResult Function(_CompletedUserTurn value)? completeUserTurn,
    required TResult orElse(),
  }) {
    if (completeUserTurn != null) {
      return completeUserTurn(this);
    }
    return orElse();
  }
}

abstract class _CompletedUserTurn implements TimerCountDownState {
  const factory _CompletedUserTurn() = _$CompletedUserTurnImpl;
}
