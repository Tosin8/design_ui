import 'package:flutter/material.dart';

class MiddleScreenMobile extends StatefulWidget {
  const MiddleScreenMobile({super.key});

  @override
  State<MiddleScreenMobile> createState() => _MiddleScreenMobileState();
}

class _MiddleScreenMobileState extends State<MiddleScreenMobile> {
String _dropdownvalue = 'Weekly'; 
  final _items = [
    'Weekly', 
    'Monthly', 
    'Yearly'
  ];

  @override
  Widget build(BuildContext context) {

       List<double> hourlyWorking = [
    22, 
    67.7, 
    55.9, 
    78, 
    78, 
    34.9, 
    28.8, 
  ];
    return const Placeholder();
  }
}