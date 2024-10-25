import 'package:flutter/material.dart';
import 'package:moneymanager/presentation/Transactions_screen/transaction_screen.dart';
import 'package:moneymanager/presentation/accounts_screen/accounts_screen.dart';
import 'package:moneymanager/presentation/analysis_screen/analysis_screen.dart';
import 'package:moneymanager/presentation/home_page/home_page.dart';
import 'package:moneymanager/presentation/home_page/widgets/bottom_navigation_bar_widget.dart';
import 'package:moneymanager/presentation/profile_and_settings/profile_screen.dart';

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

class BottomNavigationBarPainter extends CustomPainter {
  final int selectedIndex;
  final List<BottomNavigationBarItem> items;

  BottomNavigationBarPainter({
    required this.selectedIndex,
    required this.items,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.grey
      ..style = PaintingStyle.fill;

    // Draw the rounded corners
    final path = Path()
      ..moveTo(0, size.height)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, 0)
      /*..arcToPoint(Offset(size.width - 20, 20), radius: Radius.circular(20))
      ..lineTo(20, 20)
      ..arcToPoint(Offset(0, size.height), radius: Radius.circular(20))*/
      ..close();
    canvas.drawPath(path, paint);

    // Draw the selected item indicator
    final selectedItemWidth = size.width / items.length;
    final selectedItemX = selectedIndex * selectedItemWidth;
    final selectedItemIndicatorPaint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;
    canvas.drawRect(
      Rect.fromLTWH(selectedItemX, size.height - 10, selectedItemWidth, 5),
      selectedItemIndicatorPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return selectedIndex !=
        (oldDelegate as BottomNavigationBarPainter).selectedIndex;
  }
}
