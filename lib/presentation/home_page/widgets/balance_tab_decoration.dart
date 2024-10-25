import 'package:flutter/material.dart';

class BalanceTabDecoration extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    Path path = Path();

    // Start from top-left corner
    path.moveTo(0, 0);
    path.lineTo(0, 149);
    path.quadraticBezierTo(0, size.height, size.width * 0.06, size.height);

    path.lineTo(size.width * 0.94, size.height);
    path.quadraticBezierTo(size.width, size.height, size.width, 149);
    path.lineTo(size.width, 55);
    path.quadraticBezierTo(size.width, 35, size.width * 0.94, 35);
    path.lineTo(160, 35);
    path.quadraticBezierTo(140, 35, 140, 17.5);
    path.lineTo(140, 17.5);
    path.quadraticBezierTo(140, 0, 120, 0);
    path.lineTo(20, 0);
    path.quadraticBezierTo(0, 0, 0, 30);
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
