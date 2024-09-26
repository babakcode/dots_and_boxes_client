import 'package:dots_boxes_game/core/di/di.dart';
import 'package:dots_boxes_game/core/network_clients/gql/gql_client_base_data_impl.dart';
import 'package:dots_boxes_game/core/network_clients/interfaces/gql.dart';
import 'package:dots_boxes_game/features/splash/data/repo/token_service.dart';
import '../../domain/entities/tel_info/tel_info_entity.dart';
import '../../domain/repo/splash_repository.dart';
import '../repo/tel_info_stub.dart';

class SplashRepositoryImpl implements SplashRepository {
  const SplashRepositoryImpl({
    required TelegramAppInfo telInfo,
    required GraphQlClientRepo graphQl,
    required TokenService tokenServiceRepo,
  })  : _telInfo = telInfo,
        _graphQl = graphQl,
        _tokenServiceRepo = tokenServiceRepo;

  final TelegramAppInfo _telInfo;

  final GraphQlClientRepo _graphQl;

  final TokenService _tokenServiceRepo;

  @override
  Future<TelInfoEntity> getTelegramAppInfo() => _telInfo.getTelegramAppInfo();

  @override
  Future<bool> verifyDotsBoxes(
      {required String initData, required String platform}) async {

    return await _graphQl.query('''
query verifyDotsBoxes(\$initData: String!, \$platform: String!, \$newSession: Boolean!) {
  verifyDotsBoxes(initData: \$initData, platform: \$platform, newSession: \$newSession) {
    verify,
    newUser,
    accessToken,
    refreshToken
  }
}
    ''', vars: {
      "initData": initData,
      "platform": platform,
      "newSession": await _tokenServiceRepo.getAccessToken() == null,
    }).then((res) async {
      final data = res['verifyDotsBoxes'];

      final String? accessToken = data?['accessToken'];
      final String? refreshToken = data?['refreshToken'];

      if (accessToken != null) {
        await _tokenServiceRepo.storeAccessToken(accessToken);

        /// set the [accessToken] for graphql headers
        sl<GraphQlClientBaseDataImpl>().initClient(
          value: accessToken,
        );
      }
      if (refreshToken != null) {
        await _tokenServiceRepo.storeRefreshToken(refreshToken);
      }
      return data?['verify'] ?? false;
    });
  }

  @override
  Future<bool> refreshToken() async {
    // replace refreshToken instead accessToken
    sl<GraphQlClientBaseDataImpl>().initClient(
      key: 'authorization-refresh',
      value: await _tokenServiceRepo.getRefreshToken(),
    );

    return _graphQl.query('{refreshToken}').then(
      (data) async {
        String newAccessToken = data['refreshToken'];

        // save new access token
        await _tokenServiceRepo.storeAccessToken(newAccessToken);

        // access token changed successfully
        sl<GraphQlClientBaseDataImpl>().initClient(
          key: null,
          value: newAccessToken,
        );

        return true;
      },
    );
  }

  @override
  Future<bool> canAccess() async {

    String? accessToken = await _tokenServiceRepo.getAccessToken();
    String? refreshToken = await _tokenServiceRepo.getRefreshToken();

    print('accessToken: $accessToken\nrefreshToken: $refreshToken');

    sl<GraphQlClientBaseDataImpl>().initClient(key: null, value: accessToken);
    return _graphQl.query('{canAccess}').then((data) {
      return (data['canAccess'] as bool?) ?? false;
    });
  }
}
