import 'package:intl/intl.dart';

List accounts = [
  {
    'name': "Bank Account",
    'Balance': 10000,
    'Transactions': [
      {
        'name': 'transaction 11',
        'amount': '1500',
        'type': 'income',
        'category': 'Grocery',
        'date': DateFormat('dd/MM/yy').format(
          DateTime.now().subtract(
            const Duration(days: 2),
          ),
        ),
        'time': DateFormat('hh:mm a').format(
          DateTime.now().subtract(
            const Duration(hours: 2),
          ),
        ),
      },
      {
        'name': 'transaction 12',
        'amount': '1100',
        'type': 'income',
        'category': 'book',
        'date': DateFormat('dd/MM/yy').format(DateTime.now()),
        'time': DateFormat('hh:mm a').format(DateTime.now()),
      }
    ]
  },
  {
    'name': "Cash Wallet",
    'Balance': 41000,
    'Transactions': [
      {
        'name': 'transaction 21',
        'amount': '1000',
        'type': 'expense',
        'category': 'shopping',
        'date': DateFormat('dd/MM/yy').format(
          DateTime.now().subtract(
            const Duration(days: 2),
          ),
        ),
        'time': DateFormat('hh:mm a').format(
          DateTime.now().subtract(
            const Duration(hours: 2),
          ),
        ),
      },
      {
        'name': 'transaction 22',
        'amount': '500',
        'type': 'income',
        'category': 'Grocery',
        'date': DateFormat('dd/MM/yy').format(DateTime.now()),
        'time': DateFormat('hh:mm a').format(DateTime.now()),
      },
      {
        'name': 'transaction 23',
        'amount': '500',
        'type': 'income',
        'category': 'Grocery',
        'date': DateFormat('dd/MM/yy').format(
          DateTime.now().subtract(
            const Duration(days: 2),
          ),
        ),
        'time': DateFormat('hh:mm a').format(
          DateTime.now().add(
            const Duration(hours: 2),
          ),
        ),
      }
    ]
  },
  {
    'name': "Cash Wallet 2",
    'Balance': 21000,
    'Transactions': [
      {
        'name': 'transaction 31',
        'amount': '1000',
        'type': 'expense',
        'category': 'shopping',
        'date': DateFormat('dd/MM/yy').format(
          DateTime.now().subtract(
            const Duration(days: 2),
          ),
        ),
        'time': DateFormat('hh:mm a').format(
          DateTime.now().subtract(
            const Duration(hours: 2),
          ),
        ),
      },
      {
        'name': 'transaction 32',
        'amount': '500',
        'type': 'income',
        'category': 'Grocery',
        'date': DateFormat('dd/MM/yy').format(DateTime.now()),
        'time': DateFormat('hh:mm a').format(DateTime.now()),
      },
      {
        'name': 'transaction 33',
        'amount': '500',
        'type': 'expense',
        'category': 'Grocery',
        'date': DateFormat('dd/MM/yy').format(
          DateTime.now().subtract(
            const Duration(days: 2),
          ),
        ),
        'time': DateFormat('hh:mm a').format(
          DateTime.now().add(
            const Duration(hours: 2),
          ),
        ),
      },
      {
        'name': 'transaction 34',
        'amount': '500',
        'type': 'expense',
        'category': 'Grocery',
        'date': DateFormat('dd/MM/yy').format(
          DateTime.now().subtract(
            const Duration(days: 2),
          ),
        ),
        'time': DateFormat('hh:mm a').format(
          DateTime.now().add(
            const Duration(hours: 2),
          ),
        ),
      }
    ]
  }
];
