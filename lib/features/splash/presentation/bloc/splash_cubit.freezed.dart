// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SplashState {
  String? get progressStatus => throw _privateConstructorUsedError;
  int get seenCount => throw _privateConstructorUsedError;
  TelInfoEntity? get info => throw _privateConstructorUsedError;

  /// Create a copy of SplashState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SplashStateCopyWith<SplashState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashStateCopyWith<$Res> {
  factory $SplashStateCopyWith(
          SplashState value, $Res Function(SplashState) then) =
      _$SplashStateCopyWithImpl<$Res, SplashState>;
  @useResult
  $Res call({String? progressStatus, int seenCount, TelInfoEntity? info});

  $TelInfoEntityCopyWith<$Res>? get info;
}

/// @nodoc
class _$SplashStateCopyWithImpl<$Res, $Val extends SplashState>
    implements $SplashStateCopyWith<$Res> {
  _$SplashStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SplashState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progressStatus = freezed,
    Object? seenCount = null,
    Object? info = freezed,
  }) {
    return _then(_value.copyWith(
      progressStatus: freezed == progressStatus
          ? _value.progressStatus
          : progressStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      seenCount: null == seenCount
          ? _value.seenCount
          : seenCount // ignore: cast_nullable_to_non_nullable
              as int,
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as TelInfoEntity?,
    ) as $Val);
  }

  /// Create a copy of SplashState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TelInfoEntityCopyWith<$Res>? get info {
    if (_value.info == null) {
      return null;
    }

    return $TelInfoEntityCopyWith<$Res>(_value.info!, (value) {
      return _then(_value.copyWith(info: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $SplashStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? progressStatus, int seenCount, TelInfoEntity? info});

  @override
  $TelInfoEntityCopyWith<$Res>? get info;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of SplashState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progressStatus = freezed,
    Object? seenCount = null,
    Object? info = freezed,
  }) {
    return _then(_$InitialImpl(
      progressStatus: freezed == progressStatus
          ? _value.progressStatus
          : progressStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      seenCount: null == seenCount
          ? _value.seenCount
          : seenCount // ignore: cast_nullable_to_non_nullable
              as int,
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as TelInfoEntity?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl({this.progressStatus, this.seenCount = 0, this.info});

  @override
  final String? progressStatus;
  @override
  @JsonKey()
  final int seenCount;
  @override
  final TelInfoEntity? info;

  @override
  String toString() {
    return 'SplashState(progressStatus: $progressStatus, seenCount: $seenCount, info: $info)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.progressStatus, progressStatus) ||
                other.progressStatus == progressStatus) &&
            (identical(other.seenCount, seenCount) ||
                other.seenCount == seenCount) &&
            (identical(other.info, info) || other.info == info));
  }

  @override
  int get hashCode => Object.hash(runtimeType, progressStatus, seenCount, info);

  /// Create a copy of SplashState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements SplashState {
  const factory _Initial(
      {final String? progressStatus,
      final int seenCount,
      final TelInfoEntity? info}) = _$InitialImpl;

  @override
  String? get progressStatus;
  @override
  int get seenCount;
  @override
  TelInfoEntity? get info;

  /// Create a copy of SplashState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
