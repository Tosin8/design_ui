import 'package:flutter/material.dart';

class BarChart extends StatefulWidget {
  const BarChart({super.key});

  @override
  State<BarChart> createState() => _BarChartState();
}

class _BarChartState extends State<BarChart> {

  // Hourly Reading: 
  List<double> hourlyWorking = [
    1, 
    2, 
    4, 
    6, 
    10
  ]; 
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}