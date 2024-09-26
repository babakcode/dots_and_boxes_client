import 'package:dots_boxes_game/core/blocs/socket/socket_bloc.dart';
import 'package:dots_boxes_game/core/cache_manager/cache_manager.dart';
import 'package:dots_boxes_game/core/cache_manager/cache_shared_preference.dart';
import 'package:dots_boxes_game/core/encrypt_service/encrypt_service.dart';
import 'package:dots_boxes_game/core/encrypt_service/encrypter_encrypt_service.dart';
import 'package:dots_boxes_game/core/env/env.dart';
import 'package:dots_boxes_game/core/network_clients/gql/gql_client.dart';
import 'package:dots_boxes_game/core/network_clients/gql/gql_client_base_data_impl.dart';
import 'package:dots_boxes_game/core/network_clients/interfaces/gql.dart';
import 'package:dots_boxes_game/core/network_clients/interfaces/socket.dart';
import 'package:dots_boxes_game/core/network_clients/socket/app_socket_client.dart';
import 'package:dots_boxes_game/features/game/data/repo_impl/count_down_timer_impl.dart';
import 'package:dots_boxes_game/features/game/data/repo_impl/room_game_impl.dart';
import 'package:dots_boxes_game/features/game/domain/repo/count_down_timer_repo.dart';
import 'package:dots_boxes_game/features/game/domain/repo/room_game_repo.dart';
import 'package:dots_boxes_game/features/splash/data/repo/tel_info_stub.dart';
import 'package:dots_boxes_game/features/splash/data/repo/token_service.dart';
import 'package:dots_boxes_game/features/splash/data/repo_impl/splash_repository_impl.dart';
import 'package:dots_boxes_game/features/splash/data/repo_impl/splash_socket_impl.dart';
import 'package:dots_boxes_game/features/splash/data/repo_impl/token_service_impl.dart';
import 'package:dots_boxes_game/features/splash/domain/repo/splash_repository.dart';
import 'package:dots_boxes_game/features/splash/domain/repo/splash_socket_repository.dart';
import 'package:dots_boxes_game/features/splash/presentation/bloc/splash_cubit.dart';
import 'package:dots_boxes_game/features/waiting_room/data/repo_impl/waiting_room_impl.dart';
import 'package:dots_boxes_game/features/waiting_room/domain/repo/waiting_room_repo.dart';
import 'package:encrypt/encrypt.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;

Future<void> setupDI() async {
  await dotenv.load(fileName: ".env");
  final encryptKey = dotenv.env['ENCRYPT_KEY'];

  final cachePlugin = await SharedPreferences.getInstance();

  sl.registerLazySingleton<EncryptService>(() => EncrypterEncryptService(
        Encrypter(AES(
          Key.fromBase64(encryptKey!),
          mode: AESMode.gcm,
        )),
      ));

  sl.registerLazySingleton<CacheManager>(
      () => CacheSharedPreferences(cachePlugin));

  sl.registerSingleton<TokenService>(TokenServiceImpl(
    encryptPlugin: sl<EncryptService>(),
    cacheManager: sl<CacheManager>(),
  ));

  // [gQL] implementation
  final GraphQlClientBaseDataImpl gQL = GraphQlClientBaseDataImpl()
    ..initClient(value: await sl<TokenService>().getAccessToken());
  // [gQL] add to dependency injection
  sl.registerLazySingleton<GraphQlClientBaseDataImpl>(() => gQL);

  // presentation
  sl.registerFactory<SplashCubit>(
      () => SplashCubit(splashRepo: sl(), tokenService: sl()));

  // domain
  sl.registerLazySingleton<SplashRepository>(() => SplashRepositoryImpl(
        graphQl: sl(),
        telInfo: sl(),
        tokenServiceRepo: sl(),
      ));

  sl.registerLazySingleton<GraphQlClientRepo>(() => GraphQlClientImpl(sl()));
  sl.registerLazySingleton<TelegramAppInfo>(() => TelegramAppInfo());

  /// socket bloc
  sl
    ..registerFactory<SocketBloc>(
      () => SocketBloc(
          splashSocketRepo: sl<SplashSocketRepo>(),
        waitingRoomRepository: sl<WaitingRoomRepository>(),
        roomGameRepo: sl<RoomGameRepo>(),
      ),
    )
    ..registerLazySingleton<SplashSocketRepo>(() => SplashSocketImpl(
        socketPlugin: sl<AppSocketClient>(), tokenService: sl<TokenService>()))
    ..registerLazySingleton<AppSocketClient>(
      () => AppSocketIOClientImpl(Env().socketBaseUrl),
    )
    ..registerLazySingleton<WaitingRoomRepository>(
      () => WaitingRoomImpl(sl<AppSocketClient>()),
    )
    ..registerLazySingleton<RoomGameRepo>(
      () => RoomGameImpl(sl<AppSocketClient>()),
    );

  sl.registerLazySingleton<CountDownTimerRepo>(() => CountDownTimerImpl());
}
