import 'package:flutter/material.dart';

class CoffeeSplash extends StatelessWidget {
  const CoffeeSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image:
          AssetImage(
            'assets/coffee_shop/1.jpg',
          ), fit: BoxFit.cover))
        ),
      
    );
  }
}