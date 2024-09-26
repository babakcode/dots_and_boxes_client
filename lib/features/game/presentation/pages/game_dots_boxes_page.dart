import 'dart:math';
import 'package:dots_boxes_game/core/blocs/socket/socket_bloc.dart';
import 'package:dots_boxes_game/core/blocs/user_player/user_player_cubit.dart';
import 'package:dots_boxes_game/core/entities/user_player_entity.dart';
import 'package:dots_boxes_game/features/game/domain/entities/home/home.dart';
import 'package:dots_boxes_game/features/game/domain/entities/line/line.dart';
import 'package:dots_boxes_game/features/game/presentation/blocs/count_down/timer_count_down_bloc.dart';
import 'package:dots_boxes_game/features/game/presentation/blocs/game/room_game_cubit.dart';
import 'package:dots_boxes_game/features/game/presentation/widgets/animated_home.dart';
import 'package:dots_boxes_game/features/game/presentation/widgets/animated_line.dart';
import 'package:dots_boxes_game/features/home/presentation/view/home_view.dart';
import 'package:dots_boxes_game/features/waiting_room/domain/entity/game_level_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vibration/vibration.dart';

class GameDotsBoxesPage extends StatefulWidget {
  final GameLevelEntity level;
  final String roomId;

  const GameDotsBoxesPage(
      {super.key, required this.level, required this.roomId});

  @override
  State<GameDotsBoxesPage> createState() => _GameDotsBoxesPageState();
}

class _GameDotsBoxesPageState extends State<GameDotsBoxesPage> {
  int get widgetsCount => widget.level.board * 2 - 1;
  List<LineEntity> lines = [];
  List<HomeEntity> homes = [];

  @override
  void initState() {
    super.initState();

    // design board
    for (int index = 0; index < widget.level.board; index++) {
      for (int x = 0; x < widget.level.board - 1; x++) {
        final LineEntity l = LineEntity(
            p1: Point(x, index),
            p2: Point(x + 1, index),
            notifier: ValueNotifier(Colors.transparent));
        lines.add(l);
        homes.add(HomeEntity(
          point: Point(x, index),
          notifier: ValueNotifier(Colors.transparent),
        ));
      }

      if (index != widget.level.board - 1) {
        for (int x = 0; x < widget.level.board; x++) {
          final LineEntity l2 = LineEntity(
              p1: Point(x, index),
              p2: Point(x, index + 1),
              notifier: ValueNotifier(Colors.transparent));
          lines.add(l2);
        }
      }
    }
  }

  bool myTurn = false; // which means blue user
  UserPlayer? userTurn;

  @override
  Widget build(BuildContext context) {
    // get myAccount from existing state
    final myAccount =
        context.select((UserPlayerCubit bloc) => bloc.state.player);

    return MultiBlocListener(
      listeners: [

        // socket bloc listener
        BlocListener<SocketBloc, SocketState>(
          listener: (context, state) {
            state.whenOrNull(
              playerClickLine: (line, nextUserId) async {

                // draw a new line
                draw(context, line);

                // reset user timeout
                context.read<TimerCountDownBloc>()
                  ..add(const TimerCountDownEvent.resetUserTimeout())
                  ..add(const TimerCountDownEvent.userTurnStart(
                      duration: TimerCountDownBloc.userTurnDuration));

                // change user turn
                context.read<RoomGameCubit>().changeUserTurn(nextUserId);

                // vibrate if available
                if (await Vibration.hasVibrator() ?? false) {
                  Vibration.vibrate(duration: 200);
                }
              },
              gameOver: (winnerId) {

                // stop timer
                context
                    .read<TimerCountDownBloc>()
                    .add(const TimerCountDownEvent.resetUserTimeout());

                // game winner
                final win = winnerId == null ? null : myAccount?.id == winnerId;

                // set user new assets
                _setUserAsset(context, win);

                // show win/lose/draw DIALOG
                _showWinLoseDrawDialog(context, win);
              },
            );
          },
        ),

        // room bloc listener
        BlocListener<RoomGameCubit, RoomGameState>(
          listener: (context, state) {
            state.whenOrNull(
              players: (players, userTurn) {
                this.userTurn = userTurn;
                myTurn = myAccount?.id == userTurn.id;
              },
            );
          },
        ),
      ],
      child: Center(
        child: AspectRatio(
          aspectRatio: 1,
          child: IgnorePointer(
            ignoring: !myTurn,
            child: LayoutBuilder(builder: (context, constraints) {
              final squareRib =
                  min(constraints.maxWidth, constraints.maxHeight);
              final double circleSquareRib =
                  squareRib * ((12 - widget.level.board) / 100);
              final homeRib =
                  (squareRib - circleSquareRib * widget.level.board) /
                      (widget.level.board - 1);

              return Card(
                margin: EdgeInsets.zero,
                child: Column(
                  children: List.generate(
                      widget.level.board,
                      (index) => _buildDotsItem(
                          context, index, homeRib, circleSquareRib)),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }

  Widget _buildDotsItem(
    BuildContext context,
    int iY,
    double homeRib,
    double circleSquareRib,
  ) {
    return Column(
      children: [
        Row(
          children: List.generate(
            widgetsCount,
            (indexRow) {
              if (indexRow.isEven) {
                return SizedBox(
                  width: circleSquareRib,
                  height: circleSquareRib,
                  child: Container(
                    margin: EdgeInsets.all(min(circleSquareRib, 5)),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ),
                );
              }

              final int x = (indexRow - 1) ~/ 2;

              LineEntity l = lines.firstWhere((line) => LineEntity.equals(
                  line, LineEntity(p1: Point(x, iY), p2: Point(x + 1, iY))));

              return Expanded(
                child: InkWell(
                  onTap: () => send(context, l),
                  borderRadius: BorderRadius.circular(12),
                  child: AnimatedLine(
                    height: circleSquareRib,
                    notifier: l.notifier,
                  ),
                ),
              );
            },
          ),
        ),
        if (iY != widget.level.board - 1)
          Row(
            children: List.generate(widgetsCount, (indexRow) {
              final int x = (indexRow) ~/ 2;

              LineEntity l = lines.firstWhere((line) => LineEntity.equals(
                  line, LineEntity(p1: Point(x, iY), p2: Point(x, iY + 1))));

              if (indexRow.isEven) {
                return InkWell(
                  borderRadius: BorderRadius.circular(12),
                  onTap: () => send(context, l),
                  child: AnimatedLine(
                    notifier: l.notifier,
                    height: homeRib,
                    width: circleSquareRib,
                    axis: Axis.vertical,
                  ),
                );
              }

              HomeEntity? home;
              final homeIndex = homes.indexWhere((home) =>
                  HomeEntity.equals(home, HomeEntity(point: Point(x, iY))));
              if (homeIndex != -1) {
                home = homes.elementAtOrNull(homeIndex);
              }

              return Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Theme.of(context).canvasColor,
                  ),
                  height: homeRib,
                  width: homeRib,
                  child: AnimatedHome(
                    height: homeRib,
                    width: homeRib,
                    notifier: home?.notifier!,
                  ),
                ),
              );
            }),
          ),
      ],
    );
  }

  void checkCompleteHome(Color color) {
    print('eny completed? ${lines.any((element) => element.completed)}');

    final dots = (widget.level.board - 1) * (widget.level.board - 1);

    // bool shouldNotChangeTurn = true;

    for (int i = 0; i < dots; i++) {
      final int x = i % (widget.level.board - 1);
      final int y = i ~/ (widget.level.board - 1);

      if (homes.any((home) =>
          home.filled &&
          HomeEntity.equals(home, HomeEntity(point: Point(x, y))))) {
        continue;
      }

      // top line
      final topChecked = lines.any((line) =>
          line.completed &&
          LineEntity.equals(
              line, LineEntity(p1: Point(x, y), p2: Point(x + 1, y))));

      // right line
      final rightChecked = lines.any((line) =>
          line.completed &&
          LineEntity.equals(
              line, LineEntity(p1: Point(x + 1, y), p2: Point(x + 1, y + 1))));

      // bottom line
      final bottomChecked = lines.any((line) =>
          line.completed &&
          LineEntity.equals(
              line, LineEntity(p1: Point(x, y + 1), p2: Point(x + 1, y + 1))));

      // left line
      final leftChecked = lines.any((line) =>
          line.completed &&
          LineEntity.equals(
              line, LineEntity(p1: Point(x, y), p2: Point(x, y + 1))));

      if (topChecked && rightChecked && bottomChecked && leftChecked) {
        final home = homes.firstWhere(
            (home) => HomeEntity.equals(home, HomeEntity(point: Point(x, y))));

        home.notifier?.value = color;
        homes[homes.indexWhere(
          (element) => HomeEntity.equals(element, home),
        )] = home.copyWith(filled: true);

        // shouldNotChangeTurn = false;
      }
    }

    // if (shouldNotChangeTurn) {
    //   myTurn = !myTurn;
    // }
  }

  void draw(BuildContext context, LineEntity l) {
    final lIndex = lines.indexWhere(
        (element) => !element.completed && LineEntity.equals(l, element));

    if (lIndex == -1) {
      print('not found line with this info: $l');
      return;
    }
    l = lines[lIndex];
    if (l.completed) {
      return;
    }
    l = l.copyWith(completed: true);
    Color color = myTurn ? Colors.blue : Colors.red;
    l.notifier?.value = color;
    lines[lIndex] = l;
    checkCompleteHome(color);
  }

  void send(BuildContext context, LineEntity line) {
    if (line.completed) {
      return;
    }

    if (myTurn) {
      context.read<SocketBloc>().add(
            SocketEvent.playerClickLine(
              p1: line.p1,
              p2: line.p2,
              room: widget.roomId,
            ),
          );
    }
  }

  void _setUserAsset(BuildContext context, bool? win) {

    // set new assets for my player
    UserAssets playerAssets = context.read<UserPlayerCubit>().state.player!.assets!;

    if(win == null){
      // draw
      playerAssets = playerAssets.copyWith(
        coins: playerAssets.coins + widget.level.fee,
        draws: playerAssets.draws + 1,
      );
    }else {
      if(win){
        // increase wins
        playerAssets = playerAssets.copyWith(
          coins: playerAssets.coins + widget.level.winnerCoin,
          wins: playerAssets.wins + 1,
        );
      }else{
        // increase loses
        playerAssets = playerAssets.copyWith(
          coins: playerAssets.coins + widget.level.loserCoin,
          loses: playerAssets.loses + 1,
        );
      }
    }

    // set new assets
    context.read<UserPlayerCubit>().setUserCurrentUserAssets = playerAssets;
  }

  void _showWinLoseDrawDialog(BuildContext context, bool? win) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32),
            side: BorderSide(
              color: Theme.of(context).colorScheme.primary,
            )
        ),
        title: Text(
            'YOU ${win == null ? 'DRAW' : win ? 'WIN' : 'LOSE'}'),
        content: Text.rich(TextSpan(children: [
          const TextSpan(text: 'You got '),
          WidgetSpan(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
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
                    formatter.format(win == null
                        ? widget.level.fee
                        : win
                        ? widget.level.winnerCoin
                        : widget.level.loserCoin),
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                ],
              )),
          const TextSpan(
              text: ' Win Wealth',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              )),
          const TextSpan(text: ' tokens'),
        ])),
        actions: [
          FilledButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeView(),
                    ),
                        (route) => false);
              },
              child: const Text('Go menu'))
        ],
      ),
    );
  }
}
