import 'package:flutter/material.dart';
import 'package:spend_smart/presentation/home_page/bottom_nav_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../core/colors.dart';
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
                      onPressed: () {
                        Navigator.of(context).push(createRoute());
                      },
                      child: Text(
                        'Skip',
                        style: TextStyle(
                          fontSize: 17,
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ),
                    SmoothPageIndicator(
                      controller: controller,
                      count: 4,
                      effect: ExpandingDotsEffect(
                          spacing: 15,
                          dotHeight: 12,
                          dotWidth: 12,
                          activeDotColor: AppColors.primaryColor,
                          dotColor: AppColors.secondaryColor),
                    ),
                    TextButton(
                      onPressed: () {
                        controller.animateToPage(value + 1,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn);
                      },
                      child: Text(
                        'Next',
                        style: TextStyle(
                            fontSize: 17, color: AppColors.primaryColor),
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
                      child: Text(
                        "Let's Go",
                        style: TextStyle(
                            fontSize: 17, color: AppColors.primaryColor),
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
