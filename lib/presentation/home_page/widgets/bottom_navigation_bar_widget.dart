import 'dart:developer';

import 'package:spend_smart/core/colors.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar(
      {super.key, required this.onTap, required this.currentIndex});
  final Function(int) onTap;
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return ConvexAppBar(
      activeColor: Colors.white,
      style: TabStyle.react,
      height: 55,
      onTap: (index) {
        log(index.toString());
        onTap(index);
      },
      initialActiveIndex: 2,
      backgroundColor: AppColors.primaryColor,
      items: const [
        TabItem(icon: Icon(Icons.account_balance), title: 'Accounts'),
        TabItem(icon: Icon(Icons.list), title: 'Records'),
        TabItem(icon: Icon(Icons.home), title: 'Home'),
        TabItem(icon: Icon(Icons.account_balance), title: 'Stats'),
        TabItem(icon: Icon(Icons.person_2_outlined), title: 'Profile'),
      ],
    );
  }
}
