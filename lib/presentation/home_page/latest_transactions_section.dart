import 'package:flutter/material.dart';
import 'package:spend_smart/core/colors.dart';

class LatestTransactionsSection extends StatelessWidget {
  const LatestTransactionsSection({
    super.key,
    required this.transactions,
  });
  final List transactions;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        //  color: Colors.white,
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Latest Transactions',
              style: TextStyle(fontSize: 20),
            ),
            Flexible(
              child: ListView.separated(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                addAutomaticKeepAlives: false,
                addRepaintBoundaries: false,
                addSemanticIndexes: false,
                shrinkWrap: true,
                itemCount: transactions.length,
                itemBuilder: (context, index) {
                  final transactionItem = transactions[index];

                  return ListTile(
                    leading: const CircleAvatar(),
                    title: Text(
                      transactionItem['name'],
                      style: TextStyle(
                          fontSize: 16,
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      '${transactionItem['category']}.',
                      style: TextStyle(
                        color: Colors.teal.shade300,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                    trailing: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          ' ${transactionItem['type'] == 'income' ? '+' : '-'}₹${transactionItem['amount'].toString()}',
                          style: TextStyle(
                              fontSize: 17,
                              color: transactionItem['type'] == 'income'
                                  ? Colors.green.shade700
                                  : Colors.red.shade900,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          transactionItem['date'],
                          style: const TextStyle(
                            height: 0.6,
                            fontSize: 10,
                            fontStyle: FontStyle.italic,
                            color: Color.fromARGB(255, 115, 104, 107),
                          ),
                        ),
                        Text(
                          transactionItem['time'],
                          style: const TextStyle(
                            height: 2,
                            fontSize: 10,
                            fontStyle: FontStyle.italic,
                            color: Color.fromARGB(255, 115, 104, 107),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(height: 0),
              ),
            )
          ],
        ),
      ),
    );
  }
}
