import 'package:dots_boxes_game/features/splash/data/repo/tel_info_stub.dart';
import 'package:dots_boxes_game/features/splash/domain/entities/tel_info/tel_info_entity.dart';

// ignore: avoid_web_libraries_in_flutter
import 'dart:html';

// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

import 'package:dots_boxes_game/features/splash/domain/entities/tel_init_data_unsafe/tel_init_data_unsafe_entity.dart';

class TelegramInfoImp implements TelegramAppInfo {
  @override
  Future<TelInfoEntity> getTelegramAppInfo() async {
    for (int attempts = 0; attempts < 4; attempts++) {
      final myObject = js.JsObject.fromBrowserObject(window);

      final webApp = myObject['Telegram']?['WebApp'];

      if ((webApp?['initData'] as String?)?.isNotEmpty ?? false) {
        return TelInfoEntity(
          initData: Uri.parse(webApp['initData']).toString(),
          platform: webApp['platform'],
          initDataUnsafe: TelInitDataUnsafeEntity(
            user: TelInitDataUnsafeEntityUser(
                photoUrl: webApp['initDataUnsafe']?['user']?['photo_url']
            ),
          ),
        );
      }

      await Future.delayed(const Duration(seconds: 2));
    }

    throw Exception('Cannot get telegram app data');
  }
}
