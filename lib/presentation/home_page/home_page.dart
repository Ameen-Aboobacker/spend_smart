import 'package:flutter/material.dart';
import 'package:spend_smart/presentation/home_page/header_section.dart';
import 'package:spend_smart/presentation/home_page/latest_transactions_section.dart';

import '../../core/colors.dart';
import '../../core/sample.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  num totalBalance = 0;
  List transes = [];
  String selected = 'All';
  void calculateTotalBalance() {
    List sample = [];
    totalBalance = accounts.fold(0, (sum, account) => sum + account['Balance']);
    for (Map<String, dynamic> element in accounts) {
      List a = element['Transactions'] as List;
      for (var element in a) {
        sample.add(element);
      }
    }
    transes = sample;
  }

  @override
  void initState() {
    super.initState();
    calculateTotalBalance();
  }

  void updateTransactions(String? accountName) {
    List sample = [];
    if (accountName == 'All') {
      setState(
        () {
          selected = accountName!;
          for (Map<String, dynamic> element in accounts) {
            List a = element['Transactions'] as List;
            for (var element in a) {
              sample.add(element);
            }
          }
          transes = sample;
          totalBalance =
              accounts.fold(0, (sum, account) => sum + account['Balance']);
        },
      );
    } else {
      setState(
        () {
          selected = accountName!;
          var account =
              accounts.firstWhere((account) => account['name'] == accountName);
          transes = account['Transactions'];
          totalBalance = account['Balance'];
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    const String user = 'Ameen Grace';

    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.secondaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 25),
          HeaderSection(
            size: size,
            user: user,
            items: [
              PopupMenuItem(
                onTap: () {
                  updateTransactions('All');
                },
                child: const Text('All'),
              ),
              ...accounts.map(
                (e) => PopupMenuItem(
                    onTap: () {
                      updateTransactions(e['name']);
                    },
                    value: e['name'],
                    child: Text(e['name'])),
              )
            ],
            selected: selected,
            totalBalance: totalBalance,
          ),
          LatestTransactionsSection(transactions: transes),
        ],
      ),
    );
  }
}
