import 'package:flutter/material.dart';

class GroceryHome extends StatefulWidget {
  const GroceryHome({super.key});

  @override
  State<GroceryHome> createState() => _GroceryHomeState();
}

class _GroceryHomeState extends State<GroceryHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        title: Text('VeggieRoot'), 
        bottom: PreferredSize(preferredSize: preferredSize, child: child),
      ),
    );
  }
}