import 'dart:developer';

import 'package:SpendSmart/core/colors.dart';
import 'package:flutter/material.dart';

class HomeDecoration extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = AppColors.primaryColor
      ..style = PaintingStyle.fill;

    Path path = Path();

    // Start from top-left corner
    path.moveTo(8, 40);
    path.lineTo(8, size.height);

    path.quadraticBezierTo(23, size.height - 40, size.width - 8, size.height);
    path.lineTo(size.width - 8, 40);
    path.quadraticBezierTo(20, 0, 8, 40);
    // Draw the rest of the container (flat)
    // Move to bottom-right
    // Move to bottom-left
    // Close the path

    // Draw the path on the canvas
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
