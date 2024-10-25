import 'package:flutter/material.dart';

import 'paint_decoration.dart';

class PageWidget extends StatelessWidget {
  const PageWidget({
    super.key,
    required this.size,
    required this.title,
    required this.caption,
  });

  final Size size;
  final String title;
  final String caption;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomPaint(
          painter: BackgroundDecoration(),
          child: SizedBox(
            height: size.height * 0.57,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 300,
                  // width: 300,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      image: DecorationImage(
                          image: AssetImage('assets/images/onboarding_1.jpg'))),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 50),
        Text(
          title,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 35),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            caption,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
