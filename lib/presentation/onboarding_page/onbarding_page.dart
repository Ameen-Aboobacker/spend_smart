import 'package:flutter/material.dart';
import '../../core/strings.dart';
import 'widgets/page_indicator_row.dart';
import 'widgets/page_widget.dart';

ValueNotifier<int> pageNotifier = ValueNotifier(0);

class OnbardingPage extends StatelessWidget {
  OnbardingPage({super.key});
  final PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              scrollBehavior: const MaterialScrollBehavior(),
              onPageChanged: (index) => pageNotifier.value = index,
              controller: controller,
              children: [
                PageWidget(
                  size: size,
                  title: Strings.onboardingtitle1,
                  caption: Strings.onboardingDescription1,
                ),
                PageWidget(
                  size: size,
                  title: Strings.onboardingtitle2,
                  caption: Strings.onboardingDescription2,
                ),
                PageWidget(
                  size: size,
                  title: Strings.onboardingtitle3,
                  caption: Strings.onboardingDescription3,
                ),
                PageWidget(
                  size: size,
                  title: Strings.onboardingtitle4,
                  caption: Strings.onboardingDescription4,
                ),
              ],
            ),
          ),
          PageIndicatorRow(controller: controller),
          const SizedBox(height: 60)
        ],
      ),
    );
  }
}
