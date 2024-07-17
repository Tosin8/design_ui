import 'package:flutter/material.dart';

class Grocery2Splash extends StatelessWidget {
  const Grocery2Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold( 
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/grocery2/splash_main.jpg'), fit: BoxFit.cover),
          ),
        )
      ),
    );
  }
}