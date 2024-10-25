import 'package:flutter/material.dart';

class HomeDecoration extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.pink.shade800
      ..style = PaintingStyle.fill;

    Path path = Path();

    // Start from top-left corner
    path.moveTo(0, 0);
    path.lineTo(0, size.height);

    path.quadraticBezierTo(
        size.width / 10, size.height - 55, size.width, size.height);

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
