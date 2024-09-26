import 'package:dots_boxes_game/core/entities/user_player_entity.dart';
import 'package:flutter/material.dart';

import 'user_count_down.dart';

class GameRoomPlayerRight extends StatelessWidget {
  final UserPlayer player;

  const GameRoomPlayerRight({
    super.key,
    required this.player,
  });

  @override
  Widget build(BuildContext context) {

    return Row(
      children: [
        UserCountDown(player: player),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SizedBox(
              height: 4,
            ),
             Row(
              children: [
                const SizedBox(
                  width: 8,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (player.lastName != null)
                      Text(
                        player.lastName!,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),


                    const SizedBox(
                      width: 4,
                    ),


                    Text(
                      player.firstName ?? 'Unknown name',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),

                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                // Image.asset(
                //   'assets/trophy.png',
                //   width: 20,
                //   height: 20,
                //   fit: BoxFit.cover,
                // ),
                // SizedBox(
                //   width: 10,
                // ),
                // Icon(
                //   Icons.close,
                //   color: Colors.red,
                // ),
                // Icon(
                //   Icons.close,
                //   color: Colors.red,
                // ),
                // Icon(
                //   Icons.close,
                //   color: Colors.red,
                // ),

                Text(
                  '(${player.telID})',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey),
                )
              ],
            ),
            const SizedBox(
              height: 4,
            ),
          ],
        ),
      ],
    );
  }
}
