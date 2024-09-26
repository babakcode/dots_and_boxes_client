import 'package:dots_boxes_game/features/splash/data/repo/tel_info_stub.dart';
import 'package:dots_boxes_game/features/splash/domain/entities/tel_info/tel_info_entity.dart';

class TelegramInfoImp implements TelegramAppInfo{
  @override
  Future<TelInfoEntity> getTelegramAppInfo() {
    // TODO: implement getTelegramAppInfo
    print('hello');
    throw UnimplementedError();
  }
}