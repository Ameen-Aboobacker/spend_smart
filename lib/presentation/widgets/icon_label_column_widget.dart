import 'package:flutter/material.dart';

class IconLabelColumnWidget extends StatelessWidget {
  const IconLabelColumnWidget({
    super.key,
    required this.icon,
    required this.label,
  });

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    Color color = Colors.white;

    return Column(
      children: [
        Icon(
          icon,
          color: color,
        ),
        Text(
          label,
          style: TextStyle(color: color),
        )
      ],
    );
  }
}
