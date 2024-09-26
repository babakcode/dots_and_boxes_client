// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_player_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserAssetsImpl _$$UserAssetsImplFromJson(Map<String, dynamic> json) =>
    _$UserAssetsImpl(
      coins: (json['coins'] as num?)?.toInt() ?? 0,
      wins: (json['wins'] as num?)?.toInt() ?? 0,
      draws: (json['draws'] as num?)?.toInt() ?? 0,
      loses: (json['loses'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$UserAssetsImplToJson(_$UserAssetsImpl instance) =>
    <String, dynamic>{
      'coins': instance.coins,
      'wins': instance.wins,
      'draws': instance.draws,
      'loses': instance.loses,
    };

_$UserPlayerImpl _$$UserPlayerImplFromJson(Map<String, dynamic> json) =>
    _$UserPlayerImpl(
      id: json['_id'] as String,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      telID: (json['telID'] as num?)?.toInt(),
      status: json['status'] as String?,
      roles:
          (json['roles'] as List<dynamic>?)?.map((e) => e as String).toList(),
      assets: json['assets'] == null
          ? null
          : UserAssets.fromJson(json['assets'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserPlayerImplToJson(_$UserPlayerImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'telID': instance.telID,
      'status': instance.status,
      'roles': instance.roles,
      'assets': instance.assets,
    };
