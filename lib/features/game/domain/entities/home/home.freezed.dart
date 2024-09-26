// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEntity {
  Point<num> get point => throw _privateConstructorUsedError;
  ValueNotifier<Color>? get notifier => throw _privateConstructorUsedError;
  bool get filled => throw _privateConstructorUsedError;

  /// Create a copy of HomeEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeEntityCopyWith<HomeEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEntityCopyWith<$Res> {
  factory $HomeEntityCopyWith(
          HomeEntity value, $Res Function(HomeEntity) then) =
      _$HomeEntityCopyWithImpl<$Res, HomeEntity>;
  @useResult
  $Res call({Point<num> point, ValueNotifier<Color>? notifier, bool filled});
}

/// @nodoc
class _$HomeEntityCopyWithImpl<$Res, $Val extends HomeEntity>
    implements $HomeEntityCopyWith<$Res> {
  _$HomeEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? point = null,
    Object? notifier = freezed,
    Object? filled = null,
  }) {
    return _then(_value.copyWith(
      point: null == point
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as Point<num>,
      notifier: freezed == notifier
          ? _value.notifier
          : notifier // ignore: cast_nullable_to_non_nullable
              as ValueNotifier<Color>?,
      filled: null == filled
          ? _value.filled
          : filled // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeEntityImplCopyWith<$Res>
    implements $HomeEntityCopyWith<$Res> {
  factory _$$HomeEntityImplCopyWith(
          _$HomeEntityImpl value, $Res Function(_$HomeEntityImpl) then) =
      __$$HomeEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Point<num> point, ValueNotifier<Color>? notifier, bool filled});
}

/// @nodoc
class __$$HomeEntityImplCopyWithImpl<$Res>
    extends _$HomeEntityCopyWithImpl<$Res, _$HomeEntityImpl>
    implements _$$HomeEntityImplCopyWith<$Res> {
  __$$HomeEntityImplCopyWithImpl(
      _$HomeEntityImpl _value, $Res Function(_$HomeEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? point = null,
    Object? notifier = freezed,
    Object? filled = null,
  }) {
    return _then(_$HomeEntityImpl(
      point: null == point
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as Point<num>,
      notifier: freezed == notifier
          ? _value.notifier
          : notifier // ignore: cast_nullable_to_non_nullable
              as ValueNotifier<Color>?,
      filled: null == filled
          ? _value.filled
          : filled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$HomeEntityImpl implements _HomeEntity {
  const _$HomeEntityImpl(
      {required this.point, this.notifier, this.filled = false});

  @override
  final Point<num> point;
  @override
  final ValueNotifier<Color>? notifier;
  @override
  @JsonKey()
  final bool filled;

  @override
  String toString() {
    return 'HomeEntity(point: $point, notifier: $notifier, filled: $filled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeEntityImpl &&
            (identical(other.point, point) || other.point == point) &&
            (identical(other.notifier, notifier) ||
                other.notifier == notifier) &&
            (identical(other.filled, filled) || other.filled == filled));
  }

  @override
  int get hashCode => Object.hash(runtimeType, point, notifier, filled);

  /// Create a copy of HomeEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeEntityImplCopyWith<_$HomeEntityImpl> get copyWith =>
      __$$HomeEntityImplCopyWithImpl<_$HomeEntityImpl>(this, _$identity);
}

abstract class _HomeEntity implements HomeEntity {
  const factory _HomeEntity(
      {required final Point<num> point,
      final ValueNotifier<Color>? notifier,
      final bool filled}) = _$HomeEntityImpl;

  @override
  Point<num> get point;
  @override
  ValueNotifier<Color>? get notifier;
  @override
  bool get filled;

  /// Create a copy of HomeEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeEntityImplCopyWith<_$HomeEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
