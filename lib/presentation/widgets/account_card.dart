import 'package:flutter/material.dart';

class AccountCard extends StatelessWidget {
  final String label;
  final String amount;
  final Color color;

  const AccountCard(
      {super.key,
      required this.label,
      required this.amount,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15),
      height: 55,
      width: 130,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 3),
          Text(
            amount,
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
