import 'package:dots_boxes_game/core/blocs/socket/socket_bloc.dart';
import 'package:dots_boxes_game/core/blocs/user_player/user_player_cubit.dart';
import 'package:dots_boxes_game/core/di/di.dart';
import 'package:dots_boxes_game/core/env/env.dart';
import 'package:dots_boxes_game/features/game/domain/repo/count_down_timer_repo.dart';
import 'package:dots_boxes_game/features/game/presentation/blocs/game/room_game_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'app/my_app.dart';
import 'core/blocs/theme/theme_cubit.dart';
import 'features/game/presentation/blocs/count_down/timer_count_down_bloc.dart';
import 'features/splash/presentation/bloc/splash_cubit.dart';

void main() => bootstrap(EnvMode.prod);

void bootstrap(EnvMode mode) async {
  WidgetsFlutterBinding.ensureInitialized();
  Env.init(mode);
  await setupDI();
  runApp(const Providers(child: MyApp()));
}

class Providers extends StatelessWidget {
  final Widget child;

  const Providers({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ThemeCubit()),
        BlocProvider(create: (context) => sl<SplashCubit>()),
        BlocProvider(create: (context) => sl<SocketBloc>()),
        BlocProvider(create: (context) => UserPlayerCubit()),
        BlocProvider(create: (context) => TimerCountDownBloc(countDownRepo: sl<CountDownTimerRepo>())),
        BlocProvider(create: (context) => RoomGameCubit()),
      ],
      child: child,
    );
  }
}
