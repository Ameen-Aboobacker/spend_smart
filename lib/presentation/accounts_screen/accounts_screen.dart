import 'package:flutter/material.dart';

import '../home_page/widgets/accounts_section.dart';
import 'add_account_screen.dart';

class AccountsScreen extends StatefulWidget {
  const AccountsScreen({super.key});

  @override
  State<AccountsScreen> createState() => _AccountsScreenState();
}

class _AccountsScreenState extends State<AccountsScreen> {
  @override
  Widget build(BuildContext context) {
    const String label = 'Spend';
    const String amount = '5000';
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Your Accounts'),
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 30),
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    width: 250,
                    height: 390,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(height: 25),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 3, horizontal: 20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: const Column(
                            children: [
                              Text(
                                'Federal Bank',
                                style: TextStyle(fontSize: 18),
                              ),
                              Text('********7439',
                                  style: TextStyle(fontSize: 13)),
                            ],
                          ),
                        ),
                        const SizedBox(height: 5),
                        Container(
                          height: 130,
                          width: 130,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/federal.png'),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        width: 250,
                        height: 160,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(20)),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            AccountSummaryWidget(
                              label: 'Spend',
                              amount: '5000',
                            ),
                            AccountSummaryWidget(
                              label: 'Spend',
                              amount: '5000',
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 250,
                        height: 67,
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.vertical(
                              top: Radius.circular(20),
                              bottom: Radius.circular(10)),
                        ),
                        child: const Center(
                            child: Text(
                          'View More',
                          style: TextStyle(fontSize: 20),
                        )),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ));
  }
}

class AccountSummaryWidget extends StatelessWidget {
  const AccountSummaryWidget({
    super.key,
    required this.label,
    required this.amount,
  });

  final String label;
  final String amount;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 12),
        Text(label, style: const TextStyle(fontSize: 18)),
        Text(
          amount,
          style: const TextStyle(
            height: 1,
            fontSize: 35,
          ),
        ),
      ],
    );
  }
}
/*ReorderableListView.builder(
        onReorder: (oldIndex, newIndex) {
          setState(() {
            if (newIndex > oldIndex) {
              newIndex -= 1;
            }
            final Map<String, dynamic> item = accounts.removeAt(oldIndex);
            accounts.insert(newIndex, item);
          });
        },
        padding: const EdgeInsets.symmetric(vertical: 5),
        itemCount: accounts.length,
        itemBuilder: (context, index) => ListTile(
          key: Key(index.toString()),
          onTap: () {},
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                width: 45,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.settings),
                ),
              ),
              const SizedBox(
                width: 15,
                child: Icon(Icons.drag_indicator),
              ),
            ],
          ),
          leading: CircleAvatar(backgroundColor: accounts[index]['color']),
          title: Text(accounts[index]['label']),
          subtitle: Text('Balance : ${accounts[index]['amount']}'),
        ),
      ), */