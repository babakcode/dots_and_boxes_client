// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'line.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LineEntity {
  Point<int> get p1 => throw _privateConstructorUsedError;
  Point<int> get p2 => throw _privateConstructorUsedError;
  bool get completed => throw _privateConstructorUsedError;
  ValueNotifier<Color>? get notifier => throw _privateConstructorUsedError;

  /// Create a copy of LineEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LineEntityCopyWith<LineEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LineEntityCopyWith<$Res> {
  factory $LineEntityCopyWith(
          LineEntity value, $Res Function(LineEntity) then) =
      _$LineEntityCopyWithImpl<$Res, LineEntity>;
  @useResult
  $Res call(
      {Point<int> p1,
      Point<int> p2,
      bool completed,
      ValueNotifier<Color>? notifier});
}

/// @nodoc
class _$LineEntityCopyWithImpl<$Res, $Val extends LineEntity>
    implements $LineEntityCopyWith<$Res> {
  _$LineEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LineEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? p1 = null,
    Object? p2 = null,
    Object? completed = null,
    Object? notifier = freezed,
  }) {
    return _then(_value.copyWith(
      p1: null == p1
          ? _value.p1
          : p1 // ignore: cast_nullable_to_non_nullable
              as Point<int>,
      p2: null == p2
          ? _value.p2
          : p2 // ignore: cast_nullable_to_non_nullable
              as Point<int>,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
      notifier: freezed == notifier
          ? _value.notifier
          : notifier // ignore: cast_nullable_to_non_nullable
              as ValueNotifier<Color>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LineEntityImplCopyWith<$Res>
    implements $LineEntityCopyWith<$Res> {
  factory _$$LineEntityImplCopyWith(
          _$LineEntityImpl value, $Res Function(_$LineEntityImpl) then) =
      __$$LineEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Point<int> p1,
      Point<int> p2,
      bool completed,
      ValueNotifier<Color>? notifier});
}

/// @nodoc
class __$$LineEntityImplCopyWithImpl<$Res>
    extends _$LineEntityCopyWithImpl<$Res, _$LineEntityImpl>
    implements _$$LineEntityImplCopyWith<$Res> {
  __$$LineEntityImplCopyWithImpl(
      _$LineEntityImpl _value, $Res Function(_$LineEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of LineEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? p1 = null,
    Object? p2 = null,
    Object? completed = null,
    Object? notifier = freezed,
  }) {
    return _then(_$LineEntityImpl(
      p1: null == p1
          ? _value.p1
          : p1 // ignore: cast_nullable_to_non_nullable
              as Point<int>,
      p2: null == p2
          ? _value.p2
          : p2 // ignore: cast_nullable_to_non_nullable
              as Point<int>,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
      notifier: freezed == notifier
          ? _value.notifier
          : notifier // ignore: cast_nullable_to_non_nullable
              as ValueNotifier<Color>?,
    ));
  }
}

/// @nodoc

class _$LineEntityImpl implements _LineEntity {
  const _$LineEntityImpl(
      {required this.p1,
      required this.p2,
      this.completed = false,
      this.notifier});

  @override
  final Point<int> p1;
  @override
  final Point<int> p2;
  @override
  @JsonKey()
  final bool completed;
  @override
  final ValueNotifier<Color>? notifier;

  @override
  String toString() {
    return 'LineEntity(p1: $p1, p2: $p2, completed: $completed, notifier: $notifier)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LineEntityImpl &&
            (identical(other.p1, p1) || other.p1 == p1) &&
            (identical(other.p2, p2) || other.p2 == p2) &&
            (identical(other.completed, completed) ||
                other.completed == completed) &&
            (identical(other.notifier, notifier) ||
                other.notifier == notifier));
  }

  @override
  int get hashCode => Object.hash(runtimeType, p1, p2, completed, notifier);

  /// Create a copy of LineEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LineEntityImplCopyWith<_$LineEntityImpl> get copyWith =>
      __$$LineEntityImplCopyWithImpl<_$LineEntityImpl>(this, _$identity);
}

abstract class _LineEntity implements LineEntity {
  const factory _LineEntity(
      {required final Point<int> p1,
      required final Point<int> p2,
      final bool completed,
      final ValueNotifier<Color>? notifier}) = _$LineEntityImpl;

  @override
  Point<int> get p1;
  @override
  Point<int> get p2;
  @override
  bool get completed;
  @override
  ValueNotifier<Color>? get notifier;

  /// Create a copy of LineEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LineEntityImplCopyWith<_$LineEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
