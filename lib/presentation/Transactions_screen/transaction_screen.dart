import 'package:flutter/material.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, List<Map<String, dynamic>>> groupedTransactions = {
      '1/10/2024': [
        {'category': 'food', 'type': 'expense', 'amount': 1000},
        {'category': 'health', 'type': 'expense', 'amount': '1000'},
        {'category': 'salary', 'type': 'income', 'amount': 1000}
      ],
      '2/10/2024': [
        {'category': 'food', 'type': 'expense', 'amount': 1000},
        {'category': 'health', 'type': 'expense', 'amount': 1000},
        {'category': 'salary', 'type': 'income', 'amount': 1000},
        {'category': 'food', 'type': 'expense', 'amount': 1000},
        {'category': 'health', 'type': 'expense', 'amount': 1000},
        {'category': 'salary', 'type': 'income', 'amount': 1000}
      ],
      '3/10/2024': [
        {'category': 'food', 'type': 'expense', 'amount': 1000},
        {'category': 'health', 'type': 'expense', 'amount': 1000},
        {'category': 'salary', 'type': 'income', 'amount': 1000}
      ]
    };
    List<String> dates = groupedTransactions.keys.toList();
    TextStyle style =
        const TextStyle(fontSize: 16, fontWeight: FontWeight.w400);
    TextStyle style1 =
        const TextStyle(fontSize: 14, fontWeight: FontWeight.bold);
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        actions: [
          SizedBox(
              width: 25,
              child:
                  IconButton(onPressed: () {}, icon: const Icon(Icons.search))),
          IconButton(
            icon: Icon(Icons.filter_list_rounded),
            onPressed: () {},
          )
        ],
        centerTitle: true,
        title: const Text('All Transactions'),
        bottom: PreferredSize(
            preferredSize: const Size(double.infinity, 20),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('LAST 30 DAYS', style: style),
                  Text('2000', style: style),
                ],
              ),
            )),
      ),
      body: ListView.builder(
        itemCount: dates.length,
        itemBuilder: (context, index) {
          String date = dates[index];

          List<Map<String, dynamic>> transactions = groupedTransactions[date]!;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Date as a heading
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  date,
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ),

              // Transactions under the date
              Container(
                color: Colors.white,
                child: ListView.builder(
                  itemCount: transactions.length,
                  shrinkWrap: true, // Important to prevent scrolling issues
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, transactionIndex) {
                    Map<String, dynamic> transaction =
                        transactions[transactionIndex];

                    return Container(
                        decoration: const BoxDecoration(
                          border: Border(top: BorderSide(width: 0.5)),
                        ),
                        height: 90,
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
                                SizedBox(height: 1),
                                Text(
                                  transaction['type'],
                                  style: style,
                                ),
                              ],
                            ),
                            Spacer(),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(transaction['amount'].toString(),
                                    style: style1),
                                Text('Balance', style: style1),
                                Text('29-sep', style: style1),
                              ],
                            ),
                            SizedBox(width: 20),
                          ],
                        ));
                  },
                ),
              ),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        icon: const Icon(Icons.add),
        label: const Text('New Transaction'),
      ),
    );
  }
}
