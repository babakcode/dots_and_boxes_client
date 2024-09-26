

import 'package:dots_boxes_game/features/splash/data/data/tel_info/tel_info_mobile.dart'
if (dart.library.js_interop) 'package:dots_boxes_game/features/splash/data/data/tel_info/tel_info_web.dart';
import 'package:dots_boxes_game/features/splash/domain/entities/tel_info/tel_info_entity.dart';

abstract class TelegramAppInfo{
  factory TelegramAppInfo() => TelegramInfoImp();

  Future<TelInfoEntity> getTelegramAppInfo();
}
