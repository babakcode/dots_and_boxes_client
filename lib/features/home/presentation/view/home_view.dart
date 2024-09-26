import 'package:dots_boxes_game/core/blocs/theme/theme_cubit.dart';
import 'package:dots_boxes_game/core/blocs/user_player/user_player_cubit.dart';
import 'package:dots_boxes_game/core/entities/user_player_entity.dart';
import 'package:dots_boxes_game/core/env/env.dart';
import 'package:dots_boxes_game/core/ui_components/widgets/container_gradient.dart';
import 'package:dots_boxes_game/features/home/presentation/widgets/home_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

final formatter = NumberFormat("#,###");

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerGradient(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leadingWidth: 0,
          title: BlocBuilder<UserPlayerCubit, UserPlayerState>(
            builder: (context, state) {
              final assets = state.player?.assets;
              return Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MaterialButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      minWidth: 0,
                      child: Row(
                        children: [
                          Card(
                            borderOnForeground: true,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            shape: const CircleBorder(),
                            child: Image.asset(
                              'assets/images/win-wealth-logo.jpg',
                              fit: BoxFit.cover,
                              height: 32,
                              width: 32,
                            ),
                          ),
                          const SizedBox(width: 6),
                          Text(
                            formatter.format(assets?.coins),
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                    // fontFamily: 'arbil'
                                    fontWeight: FontWeight.bold),
                          ),
                        ],
                      )),
                ],
              );
            },
          ),
          actions: [
            IconButton.filledTonal(
                onPressed: () {
                  context.read<ThemeCubit>().toggleTheme();
                }, icon: const Icon(Icons.person)),
            const SizedBox(width: 16),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Win Wealth',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  Text(
                    'Dots and Boxes',
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        fontFamily: 'snak'),
                  ),
                ],
              ),
            ),
            Expanded(
              child: BlocBuilder<UserPlayerCubit, UserPlayerState>(
                builder: (context, userPlayerState) {
                  UserPlayer? player = userPlayerState.player;

                  if(Env().mode == EnvMode.dev){
                    player = UserPlayer.mock();
                  }

                  if (player == null) {
                    return const Center(child: Text('User info is required!'));
                  }

                  return HomeSwiper(player: player);
                },
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}