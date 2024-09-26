// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tel_info_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TelInfoEntity {
  String get initData => throw _privateConstructorUsedError;
  String get platform => throw _privateConstructorUsedError;
  TelInitDataUnsafeEntity get initDataUnsafe =>
      throw _privateConstructorUsedError;

  /// Create a copy of TelInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TelInfoEntityCopyWith<TelInfoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TelInfoEntityCopyWith<$Res> {
  factory $TelInfoEntityCopyWith(
          TelInfoEntity value, $Res Function(TelInfoEntity) then) =
      _$TelInfoEntityCopyWithImpl<$Res, TelInfoEntity>;
  @useResult
  $Res call(
      {String initData,
      String platform,
      TelInitDataUnsafeEntity initDataUnsafe});

  $TelInitDataUnsafeEntityCopyWith<$Res> get initDataUnsafe;
}

/// @nodoc
class _$TelInfoEntityCopyWithImpl<$Res, $Val extends TelInfoEntity>
    implements $TelInfoEntityCopyWith<$Res> {
  _$TelInfoEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TelInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initData = null,
    Object? platform = null,
    Object? initDataUnsafe = null,
  }) {
    return _then(_value.copyWith(
      initData: null == initData
          ? _value.initData
          : initData // ignore: cast_nullable_to_non_nullable
              as String,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      initDataUnsafe: null == initDataUnsafe
          ? _value.initDataUnsafe
          : initDataUnsafe // ignore: cast_nullable_to_non_nullable
              as TelInitDataUnsafeEntity,
    ) as $Val);
  }

  /// Create a copy of TelInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TelInitDataUnsafeEntityCopyWith<$Res> get initDataUnsafe {
    return $TelInitDataUnsafeEntityCopyWith<$Res>(_value.initDataUnsafe,
        (value) {
      return _then(_value.copyWith(initDataUnsafe: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TelInfoEntityImplCopyWith<$Res>
    implements $TelInfoEntityCopyWith<$Res> {
  factory _$$TelInfoEntityImplCopyWith(
          _$TelInfoEntityImpl value, $Res Function(_$TelInfoEntityImpl) then) =
      __$$TelInfoEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String initData,
      String platform,
      TelInitDataUnsafeEntity initDataUnsafe});

  @override
  $TelInitDataUnsafeEntityCopyWith<$Res> get initDataUnsafe;
}

/// @nodoc
class __$$TelInfoEntityImplCopyWithImpl<$Res>
    extends _$TelInfoEntityCopyWithImpl<$Res, _$TelInfoEntityImpl>
    implements _$$TelInfoEntityImplCopyWith<$Res> {
  __$$TelInfoEntityImplCopyWithImpl(
      _$TelInfoEntityImpl _value, $Res Function(_$TelInfoEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of TelInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initData = null,
    Object? platform = null,
    Object? initDataUnsafe = null,
  }) {
    return _then(_$TelInfoEntityImpl(
      initData: null == initData
          ? _value.initData
          : initData // ignore: cast_nullable_to_non_nullable
              as String,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      initDataUnsafe: null == initDataUnsafe
          ? _value.initDataUnsafe
          : initDataUnsafe // ignore: cast_nullable_to_non_nullable
              as TelInitDataUnsafeEntity,
    ));
  }
}

/// @nodoc

class _$TelInfoEntityImpl implements _TelInfoEntity {
  const _$TelInfoEntityImpl(
      {required this.initData,
      required this.platform,
      required this.initDataUnsafe});

  @override
  final String initData;
  @override
  final String platform;
  @override
  final TelInitDataUnsafeEntity initDataUnsafe;

  @override
  String toString() {
    return 'TelInfoEntity(initData: $initData, platform: $platform, initDataUnsafe: $initDataUnsafe)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TelInfoEntityImpl &&
            (identical(other.initData, initData) ||
                other.initData == initData) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.initDataUnsafe, initDataUnsafe) ||
                other.initDataUnsafe == initDataUnsafe));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, initData, platform, initDataUnsafe);

  /// Create a copy of TelInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TelInfoEntityImplCopyWith<_$TelInfoEntityImpl> get copyWith =>
      __$$TelInfoEntityImplCopyWithImpl<_$TelInfoEntityImpl>(this, _$identity);
}

abstract class _TelInfoEntity implements TelInfoEntity {
  const factory _TelInfoEntity(
          {required final String initData,
          required final String platform,
          required final TelInitDataUnsafeEntity initDataUnsafe}) =
      _$TelInfoEntityImpl;

  @override
  String get initData;
  @override
  String get platform;
  @override
  TelInitDataUnsafeEntity get initDataUnsafe;

  /// Create a copy of TelInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TelInfoEntityImplCopyWith<_$TelInfoEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
