import 'package:flutter/material.dart';
import 'package:moneymanager/presentation/home_page/widgets/expense_structure_section.dart';

import 'widgets/accounts_section.dart';
import 'widgets/transaction_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage('assets/images/1-2-scaled.jpg'),
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            children: const [
              AccountsSection(),
              SizedBox(height: 10),
              TransactionSection(),
              SizedBox(height: 10),
              ChartAnalysisSection(),
            ],
          ),
        ),
      ),
    );
  }
}
