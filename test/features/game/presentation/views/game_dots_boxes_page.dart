import 'dart:math';
import 'package:dots_boxes_game/core/blocs/socket/socket_bloc.dart';
import 'package:dots_boxes_game/features/game/domain/entities/home/home.dart';
import 'package:dots_boxes_game/features/game/domain/entities/line/line.dart';
import 'package:dots_boxes_game/features/game/presentation/widgets/animated_home.dart';
import 'package:dots_boxes_game/features/game/presentation/widgets/animated_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GameDotsBoxesPage extends StatefulWidget {
  final int dots;

  const GameDotsBoxesPage({super.key, required this.dots});

  @override
  State<GameDotsBoxesPage> createState() => _GameDotsBoxesPageState();
}

class _GameDotsBoxesPageState extends State<GameDotsBoxesPage> {
  bool userTurn = true; // which means blue user

  int get widgetsCount => widget.dots * 2 - 1;
  List<LineEntity> lines = [];
  List<HomeEntity> homes = [];

  @override
  void initState() {
    super.initState();

    for (int index = 0; index < widget.dots; index++) {
      for (int x = 0; x < widget.dots - 1; x++) {
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

      if (index != widget.dots - 1) {
        for (int x = 0; x < widget.dots; x++) {
          final LineEntity l2 = LineEntity(
              p1: Point(x, index),
              p2: Point(x, index + 1),
              notifier: ValueNotifier(Colors.transparent));
          lines.add(l2);
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SocketBloc, SocketState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      child: Center(
        child: AspectRatio(
          aspectRatio: 1,
          child: LayoutBuilder(builder: (context, constraints) {
            final squareRib = min(constraints.maxWidth, constraints.maxHeight);
            final double circleSquareRib =
                squareRib * ((12 - widget.dots) / 100);
            final homeRib =
                (squareRib - circleSquareRib * widget.dots) / (widget.dots - 1);

            return Column(
              children: List.generate(
                  widget.dots,
                      (index) =>
                      _buildDotsItem(context, index, homeRib, circleSquareRib)),
            );
          }),
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
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                  ),
                );
              }

              final int x = (indexRow - 1) ~/ 2;

              LineEntity l = lines.firstWhere((line) => LineEntity.equals(
                  line, LineEntity(p1: Point(x, iY), p2: Point(x + 1, iY))));

              return Expanded(
                child: InkWell(
                  onTap: () => draw(l),
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
        if (iY != widget.dots - 1)
          Row(
            children: List.generate(widgetsCount, (indexRow) {
              final int x = (indexRow) ~/ 2;

              LineEntity l = lines.firstWhere((line) => LineEntity.equals(
                  line, LineEntity(p1: Point(x, iY), p2: Point(x, iY + 1))));

              if (indexRow.isEven) {
                return InkWell(
                  borderRadius: BorderRadius.circular(12),
                  onTap: () => draw(l),
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

    final dots = (widget.dots - 1) * (widget.dots - 1);

    bool shouldNotChangeTurn = true;

    for (int i = 0; i < dots; i++) {
      final int x = i % (widget.dots - 1);
      final int y = i ~/ (widget.dots - 1);

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
        shouldNotChangeTurn = false;
      }
    }

    if (shouldNotChangeTurn) {
      userTurn = !userTurn;
    }
  }

  void draw(LineEntity l) {
    if (l.completed) {
      return;
    }
    l = l.copyWith(completed: true);
    Color color = userTurn ? Colors.blue : Colors.red;
    l.notifier?.value = color;
    lines[lines.indexWhere(
          (element) => LineEntity.equals(element, l),
    )] = l;
    checkCompleteHome(color);
  }
}
