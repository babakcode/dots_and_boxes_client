abstract interface class CacheManager{
  Future<T> get<T>(String key);
  Future<void> set(String key, String value);
  Future<void> del(String key);
}