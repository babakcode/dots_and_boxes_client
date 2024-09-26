import 'package:bloc/bloc.dart';
import 'package:dots_boxes_game/core/entities/user_player_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_player_state.dart';

part 'user_player_cubit.freezed.dart';

class UserPlayerCubit extends Cubit<UserPlayerState> {
  UserPlayerCubit() : super(const UserPlayerState(null));

  set setUserPlayer(UserPlayer? player) {
    emit(state.copyWith(player: player));
  }

  set setUserCurrentUserAssets(UserAssets assets) {
    emit(
      state.copyWith(
        player: state.player?.copyWith(
          assets: assets,
        ),
      ),
    );
  }

  set decreaseUserCoins(int coins) {
    UserAssets? assets = state.player?.assets;
    emit(
      state.copyWith(
        player: state.player?.copyWith(
          assets: assets?.copyWith(
            coins: assets.coins - coins,
          ),
        ),
      ),
    );
  }
}
