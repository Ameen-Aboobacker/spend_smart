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
    return Container(
      padding: const EdgeInsets.only(left: 20.5, top: 15),
      decoration: BoxDecoration(
          border: Border.all(), borderRadius: BorderRadius.circular(20)),
      height: 300,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Analysis',
            style: TextStyle(
              fontSize: 21,
              color: Colors.black,
              fontWeight: FontWeight.w700,
            ),
          ),
          Row(
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
          SizedBox(height: 18)
        ],
      ),
    );
  }
}
