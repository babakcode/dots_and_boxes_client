import 'package:dots_boxes_game/core/env/env.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../core/blocs/theme/theme_cubit.dart';
import '../features/splash/presentation/views/splash_view.dart';

class MyApp extends StatelessWidget {
  final Widget? stageWidget;

  const MyApp({super.key, this.stageWidget});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeMode?>(
      builder: (context, mode) {
        return MaterialApp(
          title: 'Dots And Boxes',
          debugShowCheckedModeBanner: false,
          themeMode: ThemeMode.dark,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
            fontFamily: 'app_font',
            useMaterial3: true,
          ),
          darkTheme: ThemeData(
            fontFamily: 'app_font',
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.blue,
              brightness: Brightness.dark,
            ),
            useMaterial3: true,
          ),
          home: stageWidget ??
              (Env().mode == EnvMode.dev
                  ? const SplashView()
                  : const SplashView()),
        );
      },
    );
  }
}
