import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:moneymanager/core/colors.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Map<DateTime, List<Map<String, dynamic>>> groupedTransactions = {
      DateTime(2024, 10, 1): [
        {'category': 'food', 'type': 'expense', 'amount': 1000},
        {'category': 'health', 'type': 'expense', 'amount': '1000'},
        {'category': 'salary', 'type': 'income', 'amount': 1000}
      ],
      DateTime(2024, 10, 2): [
        {'category': 'food', 'type': 'expense', 'amount': 1000},
        {'category': 'health', 'type': 'expense', 'amount': 1000},
        {'category': 'salary', 'type': 'income', 'amount': 1000},
        {'category': 'food', 'type': 'expense', 'amount': 1000},
        {'category': 'health', 'type': 'expense', 'amount': 1000},
        {'category': 'salary', 'type': 'income', 'amount': 1000}
      ],
      DateTime(2024, 10, 3): [
        {'category': 'food', 'type': 'expense', 'amount': 1000},
        {'category': 'health', 'type': 'expense', 'amount': 1000},
        {'category': 'salary', 'type': 'income', 'amount': 1000}
      ]
    };
    List dates = groupedTransactions.keys.toList();

    TextStyle style =
        const TextStyle(fontSize: 16, fontWeight: FontWeight.w400);
    TextStyle style1 =
        const TextStyle(fontSize: 14, fontWeight: FontWeight.bold);
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        actions: [
          SizedBox(
              width: 25,
              child:
                  IconButton(onPressed: () {}, icon: const Icon(Icons.search))),
          PopupMenuButton(
            icon: const Icon(
              Icons.filter_list_rounded,
              size: 30,
            ),
            itemBuilder: (context) => [
              PopupMenuItem(
                child: const Text('All'),
                onTap: () => log('All'),
              ),
              const PopupMenuItem(child: Text('Income')),
              const PopupMenuItem(child: Text('Expenses'))
            ],
          )
        ],
        centerTitle: true,
        title: const Text('All Transactions'),
        bottom: PreferredSize(
            preferredSize: const Size(double.infinity, 40),
            child: Container(
              margin: const EdgeInsets.fromLTRB(5, 0, 20, 3),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton.icon(
                    onPressed: () {
                      showMenu(
                          context: context,
                          position: const RelativeRect.fromLTRB(0, 120, 0, 0),
                          items: [
                            const PopupMenuItem(child: Text('Today')),
                            const PopupMenuItem(child: Text('This Week')),
                            const PopupMenuItem(child: Text('This Month')),
                            const PopupMenuItem(child: Text('Last 30 days')),
                            const PopupMenuItem(child: Text('Last 6 months')),
                            const PopupMenuItem(child: Text('Last year')),
                            const PopupMenuItem(child: Text('Custom Year')),
                            const PopupMenuItem(child: Text('Custom date')),
                            const PopupMenuItem(child: Text('Custom Range')),
                          ]);
                    },
                    label: Text(
                      'LAST 30 DAYS',
                      style: style.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppColors.secondaryColor,
                      ),
                    ),
                    icon: Icon(
                      Icons.arrow_drop_down_outlined,
                      color: AppColors.secondaryColor,
                    ),
                  ),
                  Text('2000', style: style),
                ],
              ),
            )),
      ),
      body: ListView.builder(
        itemCount: dates.length,
        itemBuilder: (context, index) {
          DateTime date = dates[index];
          String newdate = DateFormat('dd-MMM-yy, EEEE').format(date);
          List<Map<String, dynamic>> transactions = groupedTransactions[date]!;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 1,
                color: AppColors.secondaryColor,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  newdate,
                  style:
                      TextStyle(fontSize: 17, color: AppColors.secondaryColor),
                ),
              ),

              // Transactions under the date
              Container(
                color: AppColors.secondaryColor,
                child: ListView.builder(
                  itemCount: transactions.length,
                  padding: const EdgeInsets.all(0),
                  shrinkWrap: true, // Important to prevent scrolling issues
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, transactionIndex) {
                    Map<String, dynamic> transaction =
                        transactions[transactionIndex];

                    return Container(
                        decoration: const BoxDecoration(
                          border: Border(top: BorderSide(width: 0.5)),
                        ),
                        height: 70,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(width: 20),
                            const CircleAvatar(),
                            const SizedBox(width: 15),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  transaction['category'],
                                  style: style,
                                ),
                                const SizedBox(height: 1),
                                Text(
                                  transaction['type'],
                                  style: style,
                                ),
                              ],
                            ),
                            const Spacer(),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(transaction['amount'].toString(),
                                    style: style1),
                                Text('Balance',
                                    style:
                                        style1.copyWith(color: Colors.green)),
                                Text('29-sep', style: style1),
                              ],
                            ),
                            const SizedBox(width: 20),
                          ],
                        ));
                  },
                ),
              ),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue.withOpacity(0.9),
        shape: const CircleBorder(side: BorderSide()),
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
