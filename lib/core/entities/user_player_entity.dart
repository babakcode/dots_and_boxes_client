import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_player_entity.freezed.dart';

part 'user_player_entity.g.dart';

@freezed
class UserAssets with _$UserAssets {
  const factory UserAssets({
    @Default(0) int coins,
    @Default(0) int wins,
    @Default(0) int draws,
    @Default(0) int loses,
  }) = _UserAssets;

  factory UserAssets.fromJson(Map<String, dynamic> json) =>
      _$UserAssetsFromJson(json);
}

@freezed
class UserPlayer with _$UserPlayer {
  const factory UserPlayer({
    @JsonKey(name: '_id') required String id,
    @JsonKey(
      name: 'first_name',
      required: false,
    )
    String? firstName,
    @JsonKey(
      name: 'last_name',
      required: false,
    )
    String? lastName,
    int? telID,
    String? status,
    List<String>? roles,
    UserAssets? assets,
  }) = _UserPlayer;

  factory UserPlayer.fromJson(Map<String, dynamic> json) =>
      _$UserPlayerFromJson(json);

  static UserPlayer mock() => const UserPlayer(
      id: '123kes02rk3od9k',
      telID: 2321313,
      assets: UserAssets(
        coins: 0,
        draws: 1,
        loses: 3,
        wins: 29,
      ));
}
