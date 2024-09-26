import 'package:dots_boxes_game/core/entities/user_player_entity.dart';
import 'package:dots_boxes_game/features/game/presentation/widgets/user_count_down.dart';
import 'package:flutter/material.dart';

class GameRoomPlayerLeft extends StatelessWidget {
  final UserPlayer? player;

  const GameRoomPlayerLeft({
    super.key,
    this.player,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 4,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    player?.firstName ?? 'Loading',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  if (player?.lastName != null)
                    Text(
                      player!.lastName!,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    )
                ],
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  const SizedBox(width: 8),
                  Text(
                    '(#${player?.telID ?? '...'})',
                    style: const TextStyle(color: Colors.grey),
                  )
                ],
              ),
              const SizedBox(
                height: 4,
              ),
            ],
          ),
          const SizedBox(width: 24),
          if(player != null)
            UserCountDown(player: player!),
        ],
      ),
    );
  }
}
