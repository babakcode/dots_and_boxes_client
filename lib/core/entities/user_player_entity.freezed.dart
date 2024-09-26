// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_player_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserAssets _$UserAssetsFromJson(Map<String, dynamic> json) {
  return _UserAssets.fromJson(json);
}

/// @nodoc
mixin _$UserAssets {
  int get coins => throw _privateConstructorUsedError;
  int get wins => throw _privateConstructorUsedError;
  int get draws => throw _privateConstructorUsedError;
  int get loses => throw _privateConstructorUsedError;

  /// Serializes this UserAssets to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserAssets
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserAssetsCopyWith<UserAssets> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAssetsCopyWith<$Res> {
  factory $UserAssetsCopyWith(
          UserAssets value, $Res Function(UserAssets) then) =
      _$UserAssetsCopyWithImpl<$Res, UserAssets>;
  @useResult
  $Res call({int coins, int wins, int draws, int loses});
}

/// @nodoc
class _$UserAssetsCopyWithImpl<$Res, $Val extends UserAssets>
    implements $UserAssetsCopyWith<$Res> {
  _$UserAssetsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserAssets
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coins = null,
    Object? wins = null,
    Object? draws = null,
    Object? loses = null,
  }) {
    return _then(_value.copyWith(
      coins: null == coins
          ? _value.coins
          : coins // ignore: cast_nullable_to_non_nullable
              as int,
      wins: null == wins
          ? _value.wins
          : wins // ignore: cast_nullable_to_non_nullable
              as int,
      draws: null == draws
          ? _value.draws
          : draws // ignore: cast_nullable_to_non_nullable
              as int,
      loses: null == loses
          ? _value.loses
          : loses // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserAssetsImplCopyWith<$Res>
    implements $UserAssetsCopyWith<$Res> {
  factory _$$UserAssetsImplCopyWith(
          _$UserAssetsImpl value, $Res Function(_$UserAssetsImpl) then) =
      __$$UserAssetsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int coins, int wins, int draws, int loses});
}

/// @nodoc
class __$$UserAssetsImplCopyWithImpl<$Res>
    extends _$UserAssetsCopyWithImpl<$Res, _$UserAssetsImpl>
    implements _$$UserAssetsImplCopyWith<$Res> {
  __$$UserAssetsImplCopyWithImpl(
      _$UserAssetsImpl _value, $Res Function(_$UserAssetsImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserAssets
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coins = null,
    Object? wins = null,
    Object? draws = null,
    Object? loses = null,
  }) {
    return _then(_$UserAssetsImpl(
      coins: null == coins
          ? _value.coins
          : coins // ignore: cast_nullable_to_non_nullable
              as int,
      wins: null == wins
          ? _value.wins
          : wins // ignore: cast_nullable_to_non_nullable
              as int,
      draws: null == draws
          ? _value.draws
          : draws // ignore: cast_nullable_to_non_nullable
              as int,
      loses: null == loses
          ? _value.loses
          : loses // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserAssetsImpl implements _UserAssets {
  const _$UserAssetsImpl(
      {this.coins = 0, this.wins = 0, this.draws = 0, this.loses = 0});

  factory _$UserAssetsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserAssetsImplFromJson(json);

  @override
  @JsonKey()
  final int coins;
  @override
  @JsonKey()
  final int wins;
  @override
  @JsonKey()
  final int draws;
  @override
  @JsonKey()
  final int loses;

  @override
  String toString() {
    return 'UserAssets(coins: $coins, wins: $wins, draws: $draws, loses: $loses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAssetsImpl &&
            (identical(other.coins, coins) || other.coins == coins) &&
            (identical(other.wins, wins) || other.wins == wins) &&
            (identical(other.draws, draws) || other.draws == draws) &&
            (identical(other.loses, loses) || other.loses == loses));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, coins, wins, draws, loses);

  /// Create a copy of UserAssets
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserAssetsImplCopyWith<_$UserAssetsImpl> get copyWith =>
      __$$UserAssetsImplCopyWithImpl<_$UserAssetsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserAssetsImplToJson(
      this,
    );
  }
}

abstract class _UserAssets implements UserAssets {
  const factory _UserAssets(
      {final int coins,
      final int wins,
      final int draws,
      final int loses}) = _$UserAssetsImpl;

  factory _UserAssets.fromJson(Map<String, dynamic> json) =
      _$UserAssetsImpl.fromJson;

  @override
  int get coins;
  @override
  int get wins;
  @override
  int get draws;
  @override
  int get loses;

  /// Create a copy of UserAssets
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserAssetsImplCopyWith<_$UserAssetsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserPlayer _$UserPlayerFromJson(Map<String, dynamic> json) {
  return _UserPlayer.fromJson(json);
}

/// @nodoc
mixin _$UserPlayer {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name', required: false)
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name', required: false)
  String? get lastName => throw _privateConstructorUsedError;
  int? get telID => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  List<String>? get roles => throw _privateConstructorUsedError;
  UserAssets? get assets => throw _privateConstructorUsedError;

  /// Serializes this UserPlayer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserPlayer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserPlayerCopyWith<UserPlayer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPlayerCopyWith<$Res> {
  factory $UserPlayerCopyWith(
          UserPlayer value, $Res Function(UserPlayer) then) =
      _$UserPlayerCopyWithImpl<$Res, UserPlayer>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(name: 'first_name', required: false) String? firstName,
      @JsonKey(name: 'last_name', required: false) String? lastName,
      int? telID,
      String? status,
      List<String>? roles,
      UserAssets? assets});

  $UserAssetsCopyWith<$Res>? get assets;
}

/// @nodoc
class _$UserPlayerCopyWithImpl<$Res, $Val extends UserPlayer>
    implements $UserPlayerCopyWith<$Res> {
  _$UserPlayerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserPlayer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? telID = freezed,
    Object? status = freezed,
    Object? roles = freezed,
    Object? assets = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      telID: freezed == telID
          ? _value.telID
          : telID // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      roles: freezed == roles
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      assets: freezed == assets
          ? _value.assets
          : assets // ignore: cast_nullable_to_non_nullable
              as UserAssets?,
    ) as $Val);
  }

  /// Create a copy of UserPlayer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserAssetsCopyWith<$Res>? get assets {
    if (_value.assets == null) {
      return null;
    }

    return $UserAssetsCopyWith<$Res>(_value.assets!, (value) {
      return _then(_value.copyWith(assets: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserPlayerImplCopyWith<$Res>
    implements $UserPlayerCopyWith<$Res> {
  factory _$$UserPlayerImplCopyWith(
          _$UserPlayerImpl value, $Res Function(_$UserPlayerImpl) then) =
      __$$UserPlayerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(name: 'first_name', required: false) String? firstName,
      @JsonKey(name: 'last_name', required: false) String? lastName,
      int? telID,
      String? status,
      List<String>? roles,
      UserAssets? assets});

  @override
  $UserAssetsCopyWith<$Res>? get assets;
}

/// @nodoc
class __$$UserPlayerImplCopyWithImpl<$Res>
    extends _$UserPlayerCopyWithImpl<$Res, _$UserPlayerImpl>
    implements _$$UserPlayerImplCopyWith<$Res> {
  __$$UserPlayerImplCopyWithImpl(
      _$UserPlayerImpl _value, $Res Function(_$UserPlayerImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserPlayer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? telID = freezed,
    Object? status = freezed,
    Object? roles = freezed,
    Object? assets = freezed,
  }) {
    return _then(_$UserPlayerImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      telID: freezed == telID
          ? _value.telID
          : telID // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      roles: freezed == roles
          ? _value._roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      assets: freezed == assets
          ? _value.assets
          : assets // ignore: cast_nullable_to_non_nullable
              as UserAssets?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserPlayerImpl implements _UserPlayer {
  const _$UserPlayerImpl(
      {@JsonKey(name: '_id') required this.id,
      @JsonKey(name: 'first_name', required: false) this.firstName,
      @JsonKey(name: 'last_name', required: false) this.lastName,
      this.telID,
      this.status,
      final List<String>? roles,
      this.assets})
      : _roles = roles;

  factory _$UserPlayerImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserPlayerImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  @JsonKey(name: 'first_name', required: false)
  final String? firstName;
  @override
  @JsonKey(name: 'last_name', required: false)
  final String? lastName;
  @override
  final int? telID;
  @override
  final String? status;
  final List<String>? _roles;
  @override
  List<String>? get roles {
    final value = _roles;
    if (value == null) return null;
    if (_roles is EqualUnmodifiableListView) return _roles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final UserAssets? assets;

  @override
  String toString() {
    return 'UserPlayer(id: $id, firstName: $firstName, lastName: $lastName, telID: $telID, status: $status, roles: $roles, assets: $assets)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserPlayerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.telID, telID) || other.telID == telID) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._roles, _roles) &&
            (identical(other.assets, assets) || other.assets == assets));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, firstName, lastName, telID,
      status, const DeepCollectionEquality().hash(_roles), assets);

  /// Create a copy of UserPlayer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserPlayerImplCopyWith<_$UserPlayerImpl> get copyWith =>
      __$$UserPlayerImplCopyWithImpl<_$UserPlayerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserPlayerImplToJson(
      this,
    );
  }
}

abstract class _UserPlayer implements UserPlayer {
  const factory _UserPlayer(
      {@JsonKey(name: '_id') required final String id,
      @JsonKey(name: 'first_name', required: false) final String? firstName,
      @JsonKey(name: 'last_name', required: false) final String? lastName,
      final int? telID,
      final String? status,
      final List<String>? roles,
      final UserAssets? assets}) = _$UserPlayerImpl;

  factory _UserPlayer.fromJson(Map<String, dynamic> json) =
      _$UserPlayerImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  @JsonKey(name: 'first_name', required: false)
  String? get firstName;
  @override
  @JsonKey(name: 'last_name', required: false)
  String? get lastName;
  @override
  int? get telID;
  @override
  String? get status;
  @override
  List<String>? get roles;
  @override
  UserAssets? get assets;

  /// Create a copy of UserPlayer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserPlayerImplCopyWith<_$UserPlayerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
