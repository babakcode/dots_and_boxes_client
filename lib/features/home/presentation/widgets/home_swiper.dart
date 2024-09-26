import 'dart:math';
import 'package:card_swiper/card_swiper.dart';
import 'package:dots_boxes_game/core/entities/user_player_entity.dart';
import 'package:dots_boxes_game/features/waiting_room/domain/entity/game_level_entity.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'home_swiper_item.dart';

class HomeSwiper extends StatelessWidget {
  final UserPlayer player;

  const HomeSwiper({required this.player, super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final width = constraints.maxWidth;
      return ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(
          dragDevices: {
            PointerDeviceKind.touch,
            PointerDeviceKind.mouse,
            PointerDeviceKind.trackpad,
          },
        ),
        child: Swiper(
          controller: SwiperController()..index = 1,
          itemBuilder: (BuildContext context, int index) {

            final levelDetail = GameLevelEntity.levels[index];

            return HomeSwiperItem(
              assets: player.assets,
              level: levelDetail,
              index: index,
            );
          },
          itemCount: GameLevelEntity.levels.length,
          loop: false,
          indicatorLayout: PageIndicatorLayout.SLIDE,
          pagination: SwiperPagination(
              builder: DotSwiperPaginationBuilder(
                  color: Colors.grey.withOpacity(0.5),
                  activeColor: Colors.amberAccent)),
          // itemWidth: constraints.maxHeight * .9,
          viewportFraction:
              width <= 360 ? 1.0 : max(1 - (width - 360) / 1000, 0.2),
          scale: 0.9,
        ),
      );
    });
  }
}
