import 'package:dots_boxes_game/core/cache_manager/cache_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CacheSharedPreferences implements CacheManager{

  final SharedPreferences _preferences;

  const CacheSharedPreferences(SharedPreferences shared): _preferences = shared;

  @override
  Future<T> get<T>(String key) async {
    return _preferences.get(key) as T;
  }

  @override
  Future<void> set(String key, String value) {
    return _preferences.setString(key, value);
  }

  @override
  Future<void> del(String key) {
    return _preferences.remove(key);
  }
}