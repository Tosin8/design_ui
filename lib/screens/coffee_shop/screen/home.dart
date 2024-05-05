import 'package:flutter/material.dart';

class CoffeeHome extends StatefulWidget {
  const CoffeeHome({super.key});

  @override
  State<CoffeeHome> createState() => _CoffeeHomeState();
}

class _CoffeeHomeState extends State<CoffeeHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: Colors.grey[300],
    );
  }
}