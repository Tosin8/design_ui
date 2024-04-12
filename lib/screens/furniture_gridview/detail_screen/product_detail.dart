import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          
        ), 
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_outline, color: Colors.black),
          )
        ],
      ),
      body: Stack(
        children: [
          
        ],
      ),
    );
  }
}