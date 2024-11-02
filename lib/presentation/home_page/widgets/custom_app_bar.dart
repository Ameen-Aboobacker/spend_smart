import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.user,
  });

  final String user;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello, $user',
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const Text(
              'Welcome Back',
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
          ],
        ),
        const Spacer(),
        Container(
          height: 50,
          width: 50,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/images/user_icon.jpg")),
          ),
        ),
      ],
    );
  }
}
