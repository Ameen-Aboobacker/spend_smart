import 'package:flutter/material.dart';
import 'package:SpendSmart/presentation/accounts_screen/accounts_screen.dart';
import 'package:SpendSmart/presentation/widgets/add_account_button.dart';

import '../../widgets/account_card.dart';

List<Map<String, dynamic>> accounts = [
  {"label": "Cash", "amount": "₹1000.00", "color": Colors.orange},
  {"label": "Bank", "amount": "₹2,300.00", "color": Colors.green},
  /* {"label": "Bank", "amount": "₹2,300.00", "color": Colors.green},
    {"label": "Bank", "amount": "₹2,300.00", "color": Colors.green},
    {"label": "Cash", "amount": "₹1000.00", "color": Colors.orange},
    {"label": "Bank", "amount": "₹2,300.00", "color": Colors.green},
    {"label": "Bank", "amount": "₹2,300.00", "color": Colors.green},
    {"label": "Bank", "amount": "₹2,300.00", "color": Colors.green},*/
];

class AccountsSection extends StatefulWidget {
  const AccountsSection({super.key});

  @override
  State<AccountsSection> createState() => _AccountsSectionState();
}

class _AccountsSectionState extends State<AccountsSection> {
  // Simulate adding an account from the backend
  void _addNewAccount() {
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Your Accounts',
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
                IconButton(
                    onPressed: () async {
                      final result =
                          await Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const AccountsScreen(),
                      ));
                      if (result != null) {
                        setState(() {
                          accounts = result;
                        });
                      }
                    },
                    icon: const Icon(
                      color: Colors.white,
                      Icons.settings_suggest_outlined,
                      size: 32,
                    ))
              ],
            ),
            const Text(
              'you can mange multiple accounts here',
              style: TextStyle(
                  height: -0.3,
                  fontSize: 12,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
        const SizedBox(height: 25),
        LimitedBox(
            maxHeight: accounts.length > 2 ? 145 : 75,
            child: GridView.builder(
              // shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: accounts.length > 5 ? 6 : accounts.length + 1,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1.9,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                if (accounts.length < 5 && index == accounts.length) {
                  return AddAccountButton(
                    onAdd: _addNewAccount,
                  );
                } else if (index == 5) {
                  return AddAccountButton(
                    onAdd: _addNewAccount,
                  );
                }
                return AccountCard(
                    label: accounts[index]['label'],
                    amount: accounts[index]['amount'],
                    color: accounts[index]['color']);
              },
            )),
      ],
    );
  }
}
