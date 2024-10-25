import 'package:cloud_firestore/cloud_firestore.dart';

class AccountModel {
  String name;
  num balance;
  List<DocumentReference> transactions = [];
  AccountModel({required this.name, required this.balance});
}

class TransactionModel {}
