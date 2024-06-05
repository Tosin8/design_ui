import 'package:flutter/material.dart';

class BarChart extends StatefulWidget {
  const BarChart(barChatData, {super.key});

  @override
  State<BarChart> createState() => _BarChartState();
}

class _BarChartState extends State<BarChart> {

  // Hourly Reading: 
  List<double> hourlyWorking = [
    22, 
    67.5, 
    55.9, 
    78, 
    34.9
  ]; 
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}