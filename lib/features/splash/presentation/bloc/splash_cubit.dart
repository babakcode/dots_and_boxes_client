import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dots_boxes_game/features/splash/data/repo/token_service.dart';
import 'package:dots_boxes_game/features/splash/domain/entities/tel_info/tel_info_entity.dart';
import 'package:dots_boxes_game/features/splash/domain/repo/splash_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_state.dart';

part 'splash_cubit.freezed.dart';

class SplashCubit extends Cubit<SplashState> {
  final SplashRepository _repository;
  final TokenService _tokenService;

  SplashCubit(
      {required SplashRepository splashRepo,
      required TokenService tokenService})
      : _repository = splashRepo,
        _tokenService = tokenService,
        super(const SplashState());

  Future<TelInfoEntity> getTelegramAppInfo() {
    return _repository.getTelegramAppInfo().then((value) {
      emit(state.copyWith(
        info: value,
      ));

      return value;
    }).catchError((e) {
      log('There is error');
    });
  }

  Future<bool> verifyDotsBoxes({
    String? initData,
    String? platform,
  }) async {
    return _repository.verifyDotsBoxes(
      initData: initData ?? state.info!.initData,
      platform: platform ?? state.info!.platform,
    );
  }

  Future<bool> canAccess() async {
    return _repository.canAccess();
  }

  Future<bool> refreshToken() async {
    return _repository.refreshToken();
  }

  Future<void> removeAccessToken() => _tokenService.removeAccessToken();

  void changeProgressStatus(String status) {
    emit(state.copyWith(progressStatus: status));
  }
}
