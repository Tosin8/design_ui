import 'package:flutter/material.dart';

class CoffeeWishList extends StatelessWidget {
  const CoffeeWishList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
      body: Container(
        child: const Center(
          child: Text('No favorite coffee', style: TextStyle(fontSize: 12),),
        ),
      ),

    );
  }
}