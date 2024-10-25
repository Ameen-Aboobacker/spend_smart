import 'package:flutter/material.dart';
import 'package:moneymanager/presentation/home_page/bottom_nav_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../onbarding_page.dart';

class PageIndicatorRow extends StatelessWidget {
  const PageIndicatorRow({
    super.key,
    required this.controller,
  });

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: pageNotifier,
        builder: (context, int value, _) {
          return value != 3
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Skip',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    SmoothPageIndicator(
                      controller: controller,
                      count: 4,
                      effect: const ExpandingDotsEffect(
                          spacing: 15,
                          dotHeight: 12,
                          dotWidth: 12,
                          activeDotColor: Colors.blue,
                          dotColor: Color.fromARGB(255, 157, 185, 253)),
                    ),
                    TextButton(
                      onPressed: () {
                        controller.animateToPage(value + 1,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn);
                      },
                      child: const Text(
                        'Next',
                        style: TextStyle(fontSize: 17, color: Colors.blue),
                      ),
                    ),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(createRoute());
                      },
                      child: const Text(
                        "Let's Go",
                        style: TextStyle(fontSize: 17, color: Colors.blue),
                      ),
                    ),
                    const SizedBox(width: 20)
                  ],
                );
        });
  }
}

Route createRoute() {
  return PageRouteBuilder(
    reverseTransitionDuration: const Duration(milliseconds: 300),
    transitionDuration: const Duration(milliseconds: 500),
    pageBuilder: (context, animation, secondaryAnimation) =>
        const BottomNavScreen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(
        opacity: animation,
        child: child,
      );
    },
  );
}
