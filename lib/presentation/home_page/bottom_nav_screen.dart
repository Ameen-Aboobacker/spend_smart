import 'package:flutter/material.dart';
import 'package:spend_smart/presentation/Transactions_screen/transaction_screen.dart';
import 'package:spend_smart/presentation/accounts_screen/accounts_screen.dart';
import 'package:spend_smart/presentation/analysis_screen/analysis_screen.dart';
import 'package:spend_smart/presentation/home_page/home_page.dart';
import 'package:spend_smart/presentation/home_page/widgets/bottom_navigation_bar_widget.dart';
import 'package:spend_smart/presentation/profile_and_settings/profile_screen.dart';

ValueNotifier<int> navNotifier = ValueNotifier(2);

class BottomNavScreen extends StatelessWidget {
  const BottomNavScreen({super.key});
  @override
  Widget build(BuildContext context) {
    List pages = const [
      AccountsScreen(),
      TransactionScreen(),
      HomePage(),
      AnalysisScreen(),
      ProfileScreen()
    ];
    return ValueListenableBuilder(
        valueListenable: navNotifier,
        builder: (BuildContext context, int currentIndex, _) {
          return Scaffold(
            body: pages[currentIndex],
            bottomNavigationBar: CustomBottomNavigationBar(
              onTap: (index) => navNotifier.value = index,
              currentIndex: currentIndex,
            ),
          );
        });
  }
}
