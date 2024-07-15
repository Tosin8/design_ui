import 'package:flutter/material.dart';

import '../product_model.dart';

class VeggieDetailScreen extends StatefulWidget {
  const VeggieDetailScreen({super.key, required this.product});

  final Product product; 

  @override
  State<VeggieDetailScreen> createState() => _VeggieDetailScreenState();
}

class _VeggieDetailScreenState extends State<VeggieDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: Colors.white, 
      appBar: AppBar(
        title: Text('Veggies'), centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ), 
      ),
      body: Column(
        children: [],
      )
    );
  }
}