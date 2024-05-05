import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui_design/screens/coffee_shop/widgets/splash_button.dart';

class CoffeeSplash extends StatelessWidget {
  const CoffeeSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image:
          AssetImage(
            'assets/coffee_shop/1.jpg',
          ), fit: BoxFit.cover)), 
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black, 
                Colors.black.withOpacity(0.1), 
              ], 
              begin: Alignment.bottomCenter, 
            )
          ),
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              
              FadeInUp(
                child: const Text('Get Started', 
                style: TextStyle(color: Color(0xffFFE5B4),  fontSize: 18, ),),
              ), 
              const SizedBox(height: 20,), 
              FadeInUp(
                delay: const Duration(seconds: 5),
                duration: const Duration( milliseconds: 1500),
                child: const Text('Ready to serve you \nyour coffee', 
                style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold ),
                textAlign: TextAlign.center, ),
              ), 
              const SizedBox(height: 30,), 

              // Button
              const SplashButton(), 
              const SizedBox(height: 30,), 
            ],
          ),
        ),
          
        ),
      
    );
  }
}