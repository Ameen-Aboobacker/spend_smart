import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AddAccountScreen extends StatelessWidget {
  AddAccountScreen({super.key});
  final TextEditingController nameController = TextEditingController();
  final TextEditingController balanceController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: const Text('New Account'),
      ),
      body: Center(
        child: Form(
          child: ListView(
            padding: const EdgeInsets.fromLTRB(25, 80, 25, 0),
            children: [
              CustomTextField(
                label: 'Account Name',
                controller: nameController,
              ),
              const SizedBox(height: 35),
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
                value: 'cash',
                items: const [
                  DropdownMenuItem(value: 'cash', child: Text('cash')),
                  DropdownMenuItem(
                      value: 'Bank Account', child: Text('Bank Account')),
                  DropdownMenuItem(
                      value: 'Credit Card', child: Text('Credit card'))
                ],
                onChanged: (value) {},
              ),
              const SizedBox(height: 35),
              CustomTextField(
                label: 'Current balance',
                controller: balanceController,
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 35),
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  label: Text('Label Color'),
                  border: OutlineInputBorder(),
                ),
                value: 'red',
                items: [
                  DropdownMenuItem(
                    value: 'green',
                    child: Container(
                      width: 200,
                      height: 35,
                      color: Colors.green,
                    ),
                  ),
                  DropdownMenuItem(
                    value: 'amber',
                    child: Container(
                      width: 200,
                      height: 25,
                      color: Colors.amber,
                    ),
                  ),
                  DropdownMenuItem(
                    value: 'light blue',
                    child: Container(
                      width: 200,
                      height: 25,
                      color: Colors.lightBlue,
                    ),
                  ),
                  DropdownMenuItem(
                    value: 'red',
                    child: Container(
                      width: 200,
                      height: 25,
                      color: Colors.red,
                    ),
                  ),
                ],
                onChanged: (value) {},
              ),
              ElevatedButton(
                onPressed: () async {
                  final ref = await FirebaseFirestore.instance
                      .collection('accounts')
                      .add({'name': 'Ameen', 'balance': 5000});
                  log(ref.id);
                },
                child: const Text(''),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    required this.label,
    this.keyboardType = TextInputType.emailAddress,
  });
  final TextEditingController controller;
  final String label;
  final TextInputType keyboardType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      controller: controller,
      decoration: InputDecoration(
          label: Text(label), border: const OutlineInputBorder()),
    );
  }
}
