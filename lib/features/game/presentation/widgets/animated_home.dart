import 'package:dots_boxes_game/core/ui_components/painters/home_painter.dart';
import 'package:flutter/material.dart';

class AnimatedHome extends StatefulWidget {
  final double? width, height;
  final ValueNotifier<Color>? notifier;

  const AnimatedHome({
    super.key,
    required this.notifier,
    this.height,
    this.width,
  });

  @override
  State<AnimatedHome> createState() => _AnimatedHomeState();
}

class _AnimatedHomeState extends State<AnimatedHome>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  Color lineColor = Colors.transparent;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _animation = Tween<double>(begin: 0, end: 1).animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    widget.notifier?.addListener(() {
      setState(() => lineColor = widget.notifier?.value ?? Colors.transparent);
      _controller.forward();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: CustomPaint(
          painter: HomePainter(_animation.value, lineColor),
        ),
      ),
    );
  }
}
