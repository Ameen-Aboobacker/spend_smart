import 'package:flutter/material.dart';

class BackgroundDecoration extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;

    Path path = Path();

    // Start from top-left corner
    path.moveTo(0, 0);
    path.lineTo(0, size.height * .85);

    path.quadraticBezierTo(
        size.width / 2, size.height + 20, size.width, size.height);

    path.lineTo(size.width, 0);
    // Draw the rest of the container (flat)
    // Move to bottom-right
    // Move to bottom-left
    path.close(); // Close the path

    // Draw the path on the canvas
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
