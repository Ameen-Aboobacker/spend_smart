import 'package:flutter/material.dart';
import 'package:spend_smart/core/colors.dart';

class BalanceWidget extends StatelessWidget {
  const BalanceWidget({
    super.key,
    required this.totalBalance,
  });

  final num totalBalance;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Balance',
            style: TextStyle(color: AppColors.primaryColor, fontSize: 19),
          ),
          Text(
            '₹$totalBalance',
            style: TextStyle(
              color: AppColors.primaryColor,
              fontSize: 60,
              fontWeight: FontWeight.bold,
              height: 1,
            ),
          )
        ],
      ),
    );
  }
}
