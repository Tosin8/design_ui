import 'package:flutter/material.dart';

class FurnitureGrid extends StatefulWidget {
  const FurnitureGrid({super.key});

  @override
  State<FurnitureGrid> createState() => _FurnitureGridState();
}

class _FurnitureGridState extends State<FurnitureGrid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        leading: Icon(Icons.menu), 
        title: Text('Furniture'),
        actions: [
          
        ],
      ),
      body: Text('Hello World')
    );
  }
}