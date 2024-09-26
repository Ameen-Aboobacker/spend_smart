import 'package:flutter/material.dart';

class TransactionSection extends StatefulWidget {
  const TransactionSection({super.key});

  @override
  State<TransactionSection> createState() => _TransactionSectionState();
}

class _TransactionSectionState extends State<TransactionSection>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  List<Tab> tabList = [
    Tab(
      child: Container(
        color: Colors.red,
      ),
    ),
    Tab(text: 'Income'),
    Tab(text: 'Expense'),
    Tab(text: 'Transfers'),
  ];
  List<Widget> tabBarList = const [
    Center(
      child: Text(('All')),
    ),
    Center(
      child: Text(('Inc')),
    ),
    Center(
      child: Text(('Exp')),
    ),
    Center(
      child: Text(('Trans')),
    )
  ];
  @override
  Widget build(Object context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(), borderRadius: BorderRadius.circular(20)),
      height: 400,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Transaction history',
            style: TextStyle(
              fontSize: 22,
              color: Colors.black,
              fontWeight: FontWeight.w700,
            ),
          ),
          TabBar(
            dividerColor: Colors.transparent,
            unselectedLabelColor: Colors.black,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.amber),
            indicatorSize: TabBarIndicatorSize.tab,
            controller: _tabController,
            tabs: tabList,
          ),
          Expanded(
              child:
                  TabBarView(controller: _tabController, children: tabBarList))
        ],
      ),
    );
  }
}
