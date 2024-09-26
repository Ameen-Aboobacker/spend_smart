import 'package:flutter/material.dart';

import 'widgets/accounts_section.dart';
import 'widgets/transaction_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        children: const [
          AccountsSection(),
          SizedBox(height: 25),
          TransactionSection(),
        ],
      ),
    );
  }
}
