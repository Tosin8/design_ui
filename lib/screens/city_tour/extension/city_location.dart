import 'package:flutter/material.dart';

import '../model/location.dart';

class CityLocation extends StatefulWidget {
  final Location location; 
  const CityLocation({super.key, required this.location});

  @override
  State<CityLocation> createState() => _CityLocationState();
}

class _CityLocationState extends State<CityLocation> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; 
    return Padding(padding: const EdgeInsets.symmetric(horizontal: 4));
  }
}