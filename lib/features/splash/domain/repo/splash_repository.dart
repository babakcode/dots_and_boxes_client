import '../entities/tel_info/tel_info_entity.dart';

abstract class SplashRepository{
  Future<TelInfoEntity> getTelegramAppInfo();
  Future<bool> verifyDotsBoxes({required String initData, required String platform});
  Future<bool> canAccess();
  Future<bool> refreshToken();
}