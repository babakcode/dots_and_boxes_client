import 'dart:math';

import 'package:flutter/material.dart';

class LineVerticalPainter extends CustomPainter {
  final double progress;
  final Color color;

  const LineVerticalPainter(this.progress, this.color);

  @override
  void paint(Canvas canvas, Size size) {

    final heartbeatPoints = [
      Offset(size.width * .01, size.height * .4),
      Offset(size.width * .02, size.height * .02),
      Offset(size.width * .07, size.height * .9),
      Offset(size.width * .15, size.height * .03),
      Offset(size.width * .20, size.height * .86),
      Offset(size.width * .25, size.height * .05),
      Offset(size.width * .29, size.height * .79),
      Offset(size.width * .38, size.height * .2),
      Offset(size.width * .50, size.height * .60),
      Offset(size.width * .70, size.height * .44),
      Offset(size.width * .96, size.height * .53),
    ];

    final paint = Paint()
      ..color = color
      ..strokeWidth = 9.0
      ..strokeCap = StrokeCap.round;

    final List<Offset> points = [
      Offset(size.width * .4, size.height * .01),
      Offset(size.width * .6, size.height * .95),
      Offset(size.width * .5, size.height * .05),
      Offset(size.width * .5, size.height * .99),
      Offset(size.width * .72, size.height * .13),
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
