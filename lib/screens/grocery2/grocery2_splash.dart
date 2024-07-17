import 'package:flutter/material.dart';

class Grocery2Splash extends StatelessWidget {
  const Grocery2Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: image, fit: BoxFit.cover),
        ),
      )
    );
  }
}