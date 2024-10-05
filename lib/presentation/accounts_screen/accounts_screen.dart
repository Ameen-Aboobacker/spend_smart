import 'package:flutter/material.dart';

import '../home_page/widgets/accounts_section.dart';

class AccountsScreen extends StatefulWidget {
  const AccountsScreen({super.key});

  @override
  State<AccountsScreen> createState() => _AccountsScreenState();
}

class _AccountsScreenState extends State<AccountsScreen> {
  void _addAccount() {
    setState(() {
      accounts.add({
        "label": "New Account",
        "amount": "₹1,000.00",
        "color": Colors.blue
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context, accounts);
            },
            icon: const Icon(Icons.arrow_back)),
        centerTitle: true,
        title: const Text('Your Accounts'),
        backgroundColor: Colors.green,
      ),
      body: ReorderableListView.builder(
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
                  icon: Icon(Icons.settings),
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
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: _addAccount, child: const Icon(Icons.add)),
    );
  }
}
