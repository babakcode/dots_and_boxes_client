import 'package:dots_boxes_game/core/ui_components/painters/line_horizontal_painter.dart';
import 'package:dots_boxes_game/core/ui_components/painters/line_vertical_painter.dart';
import 'package:flutter/material.dart';

class AnimatedLine extends StatefulWidget {
  final double? width, height;
  final ValueNotifier<Color>? notifier;
  final Axis? axis;

  const AnimatedLine({
    super.key,
    required this.notifier,
    this.height,
    this.width,
    this.axis,
  });

  @override
  State<AnimatedLine> createState() => _AnimatedLineState();
}

class _AnimatedLineState extends State<AnimatedLine>
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
        padding: widget.axis == Axis.vertical
            ? const EdgeInsets.symmetric(vertical: 8.0)
            : const EdgeInsets.symmetric(horizontal: 8.0),
        child: CustomPaint(
          painter: widget.axis == Axis.vertical
              ? LineVerticalPainter(_animation.value, lineColor)
              : LineHorizontalPainter(_animation.value, lineColor),
        ),
      ),
    );
  }
}
