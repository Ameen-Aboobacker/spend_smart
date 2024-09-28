import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:moneymanager/data/filter.dart';

class TransactionSection extends StatefulWidget {
  const TransactionSection({super.key});

  @override
  State<TransactionSection> createState() => _TransactionSectionState();
}

class _TransactionSectionState extends State<TransactionSection> {
  String dropdownvalue = 'All';
  late FilterChipData selectedChip;
  List<FilterChipData> tabs = [
    FilterChipData(
      label: 'All',
      selected: true,
    ),
    FilterChipData(label: 'Income', icon: Icons.arrow_upward),
    FilterChipData(label: 'Expense', icon: Icons.arrow_downward),
    FilterChipData(label: 'Transfer', icon: Icons.refresh)
  ];
  @override
  void initState() {
    selectedChip = tabs[0];
    super.initState();
  }

  @override
  Widget build(Object context) {
    return Container(
      padding: const EdgeInsets.only(left: 20.5, top: 15),
      decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromARGB(255, 195, 196, 199)),
      height: 483,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Latest Transactions',
            style: const TextStyle(
              fontSize: 21,
              color: Colors.black,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: List.generate(
              4,
              (index) => InkWell(
                onTap: selectedChip != tabs[index]
                    ? () {
                        setState(() {
                          selectedChip = tabs[index];
                          log(selectedChip.label);
                        });
                      }
                    : () {},
                child: Container(
                    margin: const EdgeInsets.only(right: 7),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: tabs[index] == selectedChip
                              ? Colors.transparent
                              : Colors.amber),
                      borderRadius: BorderRadius.circular(10),
                      color: tabs[index] == selectedChip
                          ? Colors.amber
                          : Colors.transparent,
                    ),
                    height: 30,
                    // width: 75,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 7,
                    ),
                    child: Center(
                      child: Row(
                        children: [
                          Text(
                            tabs[index].label,
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          if (tabs[index].icon != null)
                            Icon(
                              tabs[index].icon,
                              size: 18,
                            )
                        ],
                      ),
                    )),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
              child: ListView.custom(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            childrenDelegate: SliverChildListDelegate(List.generate(
              5,
              (index) => ListTile(
                title: Text('Transaction $index'),
                subtitle: const Row(
                  children: [
                    Text('account'),
                    Text('.'),
                    Text('Type'),
                  ],
                ),
                trailing: const Text('1000'),
              ),
            )),
          )),
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Show more...',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.arrow_forward_ios_outlined,
                size: 18,
              ),
              SizedBox(width: 20)
            ],
          ),
          const SizedBox(height: 18)
        ],
      ),
    );
  }
}
