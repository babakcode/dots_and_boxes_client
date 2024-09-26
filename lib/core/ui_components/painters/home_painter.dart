import 'dart:math';

import 'package:flutter/material.dart';

class HomePainter extends CustomPainter {
  final double progress;
  final Color color;

  const HomePainter(this.progress, this.color);

  @override
  void paint(Canvas canvas, Size size) {

    final paint = Paint()
      ..color = color
      ..strokeWidth = 9.0
      ..strokeCap = StrokeCap.round;

    final List<Offset> points = [
      Offset(size.width * .01, size.height * .01),
      Offset(size.width * .11, size.height * .01),

      Offset(size.width * .01, size.height * .13),
      Offset(size.width * .31, size.height * .01),

      Offset(size.width * .01, size.height * .5),
      Offset(size.width * .5, size.height * .01),

      Offset(size.width * .01, size.height * .7),
      Offset(size.width * .7, size.height * .01),

      Offset(size.width * .01, size.height * .9),
      Offset(size.width * .9, size.height * .01),

      Offset(size.width * .3, size.height * .9),
      Offset(size.width * .9, size.height * .3),

      Offset(size.width * .5, size.height * .9),
      Offset(size.width * .9, size.height * .5),

      Offset(size.width * .7, size.height * .9),
      Offset(size.width * .9, size.height * .7),

      Offset(size.width * .9, size.height * .9),
      Offset(size.width * .9, size.height * .9),
    ];

    // Total length of the path
    double totalLength = 0.0;
    for (int i = 0; i < points.length - 1; i++) {
      totalLength += (points[i + 1] - points[i]).distance;
    }

    double currentLength = totalLength * progress;
    double accumulatedLength = 0.0;

    for (int i = 0; i < points.length - 1; i++) {
      final segmentLength = (points[i + 1] - points[i]).distance;

      if (accumulatedLength + segmentLength > currentLength) {
        // Calculate the exact point to draw to
        final remainingLength = currentLength - accumulatedLength;
        final direction = (points[i + 1] - points[i]).direction;
        final drawPoint = points[i] +
            Offset(remainingLength * cos(direction),
                remainingLength * sin(direction));

        canvas.drawLine(points[i], drawPoint, paint);
        break;
      } else {
        // Draw the entire segment
        canvas.drawLine(points[i], points[i + 1], paint);
        accumulatedLength += segmentLength;
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
