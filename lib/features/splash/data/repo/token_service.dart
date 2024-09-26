abstract interface class TokenService{
  Future<bool> storeRefreshToken(String token);
  Future<bool> storeAccessToken(String token);
  Future<String?> getAccessToken();
  Future<String?> getRefreshToken();
  Future<void> removeAccessToken();
  Future<void> removeRefreshToken();
}