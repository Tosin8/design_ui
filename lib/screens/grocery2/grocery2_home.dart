import 'package:flutter/material.dart';

class Grocery2Home extends StatelessWidget {
  const Grocery2Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(title: const Text('Grocery 2')),
      body: Column(
        children: [
          Text('Good food\nFast Delivery')
        ],
      ),
    );
  
  }
}