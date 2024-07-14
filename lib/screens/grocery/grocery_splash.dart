import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'constants/main_button.dart';

class GrocerySplash extends StatelessWidget {
  const GrocerySplash({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              Stack(
                children: 
                [Container(
                  height: 500, 
                  
                  width: double.infinity, 
                  decoration: const BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/grocery/splash_main.jpg'),fit: BoxFit.cover
                ), )
                  ).animate().fadeIn(duration: 1000.ms),
                  Positioned(
                    top: 30,right: 20,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // app logo
                        Container(
                          width: 50, height: 50,
                          child: Image.asset('assets/grocery/logo.png'),
                        ), 
                        //SizedBox(width: 1,), 
                        Text('FreshFetch', style: TextStyle(color: Colors.green.shade400, fontSize: 18, fontWeight: FontWeight.bold),),
                      ],
                    )).animate().fade(delay: 1000.ms).scale(duration: 1000.ms),
             ] ),
              
              const SizedBox(height: 20,), 
              FadeInUp(
                duration: const Duration(milliseconds: 1000),
                child: const Text('Grocery Delivery\nat your door', 
                style: TextStyle(fontWeight: FontWeight.bold,
                 fontSize: 28),
                textAlign: TextAlign.center,),
              ), 
              const SizedBox(height: 10,), 
              FadeInUp( 
                delay: const Duration(milliseconds: 1000),
                duration: const Duration(milliseconds: 1000),
                child: const Text('Order groceries from anywher \n get it delivered at your doorsteps', 
                style: TextStyle(color: Colors.grey, 
                 fontSize: 16), textAlign: TextAlign.center,
                ),
              ), 
              const SizedBox(height: 30,), 
              FadeInUp(
                delay: const Duration(milliseconds: 1000), 
                duration: const Duration(milliseconds: 1000),
                child: const MainButton())
            ],
          ),
        ),
      ),
    );
  }
}

