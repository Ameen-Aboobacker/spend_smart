import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ChartAnalysisSection extends StatefulWidget {
  const ChartAnalysisSection({super.key});

  @override
  State<ChartAnalysisSection> createState() => _ChartAnalysisSectionState();
}

class _ChartAnalysisSectionState extends State<ChartAnalysisSection> {
  String dropdownvalue = 'All';
  @override
  Widget build(Object context) {
    double incomeVal = 1000;
    double expenseVal = 750;
    return Container(
      padding: const EdgeInsets.only(left: 20.5, top: 15),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(),
          borderRadius: BorderRadius.circular(20)),
      height: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Analysis',
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.w700,
            ),
          ),
          Expanded(
            child: PieChart(
              PieChartData(
                sectionsSpace: 1,
                centerSpaceRadius: 35,
                centerSpaceColor: Colors.white,
                sections: [
                  PieChartSectionData(
                      value: expenseVal,
                      title: 'Expense',
                      titlePositionPercentageOffset: 0.4,
                      color: Colors.red,
                      radius: incomeVal > expenseVal ? 45 : 50),
                  PieChartSectionData(
                      value: incomeVal,
                      title: 'income',
                      color: Colors.green,
                      radius: incomeVal > expenseVal ? 50 : 45),
                ],
              ),
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'More Analysis',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
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
