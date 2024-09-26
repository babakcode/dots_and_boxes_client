import 'dart:developer';

import 'package:dots_boxes_game/core/cache_manager/cache_manager.dart';
import 'package:dots_boxes_game/core/encrypt_service/encrypt_service.dart';
import 'package:dots_boxes_game/features/splash/data/repo/token_service.dart';

class TokenServiceImpl implements TokenService {
  final EncryptService _encryptService;
  final CacheManager _cacheManager;

  TokenServiceImpl({
    required EncryptService encryptPlugin,
    required CacheManager cacheManager,
  })  : _cacheManager = cacheManager,
        _encryptService = encryptPlugin;

  @override
  Future<String?> getAccessToken() async {
    final encryptedAccessToken =
        await _cacheManager.get<String?>('encryptedAccessToken');
    if (encryptedAccessToken == null) {
      return null;
    }
    return _encryptService.decrypt(encryptedAccessToken);
  }

  @override
  Future<String?> getRefreshToken() async {
    final encryptedRefreshToken =
        await _cacheManager.get<String?>('encryptedRefreshToken');
    if (encryptedRefreshToken == null) {
      return null;
    }
    return _encryptService.decrypt(encryptedRefreshToken);
  }

  @override
  Future<bool> storeAccessToken(String token) {
    final encrypted = _encryptService.encrypt(token);

    return _cacheManager
        .set('encryptedAccessToken', encrypted)
        .then((_) => true);
  }

  @override
  Future<bool> storeRefreshToken(String token) {
    final encrypted = _encryptService.encrypt(token);

    return _cacheManager
        .set('encryptedRefreshToken', encrypted)
        .then((_) => true)
        .catchError((e) {
      log('Cannot save refresh token', error: e);
      return false;
    });
  }

  @override
  Future<void> removeAccessToken() {
    return _cacheManager.del('encryptedAccessToken');
  }

  @override
  Future<void> removeRefreshToken() {
    return _cacheManager.del('encryptedRefreshToken');
  }
}
