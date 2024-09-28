import 'package:flutter/material.dart';

class FilterChipData {
  String label;
  IconData? icon;
  bool selected;
  FilterChipData({required this.label, this.icon, this.selected = false});
}
