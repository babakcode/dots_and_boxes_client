import 'package:dots_boxes_game/core/entities/user_player_entity.dart';
import 'package:dots_boxes_game/features/home/presentation/view/home_view.dart';
import 'package:dots_boxes_game/features/waiting_room/domain/entity/game_level_entity.dart';
import 'package:dots_boxes_game/features/waiting_room/presentation/views/waiting_room_view.dart';
import 'package:flutter/material.dart';

class HomeSwiperItem extends StatelessWidget {
  final UserAssets? assets;
  final int index;
  final GameLevelEntity level;

  const HomeSwiperItem(
      {required this.level,
      required this.assets,
      required this.index,
      super.key});

  @override
  Widget build(BuildContext context) {
    final coins = assets?.coins ?? 0;

    const Set<String> bgImages = {
      'assets/images/bg-item-5.png',
      'assets/images/bg-item-1.png',
      'assets/images/bg-item-2.png',
      'assets/images/bg-item-7.png',
      'assets/images/bg-item-4.png',
      'assets/images/bg-item-3.png',
      'assets/images/bg-item-6.png',
      'assets/images/bg-item-8.png',
    };

    const Set<String> titles = {
      'Play with your friend',
      'Join the fun (free)',
      'Mega',
      'Titan',
      'Colossal',
      'Extreme',
      'Ultimate',
      'Legendary',
    };

    VoidCallback? onButtonClick;

    if (index == 0) {
      onButtonClick =
          () => _showFriendDialog(context, assets: assets, level: level);
    } else {
      onButtonClick = () =>
          _checkCanGoForWaitingPage(context, assets: assets, level: level);
    }

    return Card(
      shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Theme.of(context).colorScheme.primary,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(32)),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      margin: const EdgeInsets.only(bottom: 40),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: ColorFiltered(
              colorFilter: coins >= level.fee
                  ? const ColorFilter.mode(
                      Colors.transparent, BlendMode.multiply)
                  : const ColorFilter.mode(Colors.black, BlendMode.saturation),
              child: Image.asset(
                bgImages.elementAtOrNull(index) ??
                    'assets/images/bg-item-1.png',
                fit: BoxFit.fitWidth,
                width: double.infinity,
              ),
            ),
          ),

          // over texts
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    titles.elementAtOrNull(index) ?? 'Play with friend',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 6),
                  Text(
                    '${level.board}x${level.board}',
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      Card(
                        borderOnForeground: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        shape: const CircleBorder(),
                        child: Image.asset(
                          'assets/images/win-wealth-logo.jpg',
                          fit: BoxFit.cover,
                          height: 20,
                          width: 20,
                        ),
                      ),
                      const SizedBox(width: 6),
                      Text(
                        formatter.format(level.winnerCoin),
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),

          // bottom button
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: FilledButton.tonal(
                    onPressed: onButtonClick,
                    child: const Text(
                      'Let\'s play ->',
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showFriendDialog(BuildContext context,
      {UserAssets? assets, required GameLevelEntity level}) {
    if ((assets?.coins ?? 0) < level.fee) {
      _showAtLeastCoinDialog(context);
      return;
    }

    showDialog(
        context: context,
        builder: (context) => Dialog(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Put your friend id',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 16),
                        hintText: '# id',
                        border: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(8)),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    FilledButton(
                      onPressed: () => Navigator.pop(context, true),
                      child: const Text('send'),
                    )
                  ],
                ),
              ),
            )).then(
      (value) {
        if (value == true && context.mounted) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => WaitingRoomView(level),
              ));
        }
      },
    );
  }

  void _checkCanGoForWaitingPage(BuildContext context,
      {UserAssets? assets, required GameLevelEntity level}) {
    if ((assets?.coins ?? 0) >= level.fee) {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => WaitingRoomView(level),
          ));
    } else {
      _showAtLeastCoinDialog(context);
    }
  }

  void _showAtLeastCoinDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        title: Text(
          'Top up your tokens now',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        actions: [
          FilledButton.tonal(
            onPressed: () => Navigator.pop(context, true),
            child: const Text('Cancel'),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text('Recharge tokens'),
          ),
        ],
        content: Text(
          'You need at least ${level.fee} tokens to join this game.',
          style: Theme.of(context).textTheme.bodySmall,
        ),
        // child: Padding(
        //   padding:
        //   const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
        //   child: Column(
        //     mainAxisSize: MainAxisSize.min,
        //     crossAxisAlignment: CrossAxisAlignment.center,
        //     children: [
        //
        //
        //       const SizedBox(
        //         height: 12,
        //       ),
        //       FilledButton(
        //         onPressed: () => Navigator.pop(context, true),
        //         child: const Text('Recharge tokens'),
        //       ),
        //     ],
        //   ),
        // ),
      ),
    ).then(
      (value) {
        if (value != null) {}
      },
    );
  }
}
