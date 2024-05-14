import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui_design/screens/minimal_shop/screens/shop.dart';

class MinimalSplash extends StatelessWidget {
  const MinimalSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        decoration: const BoxDecoration(
         
        ),
        child: Center(
          child: Column(
        
            mainAxisAlignment: MainAxisAlignment.center, 
            children: [
        
          
           
        
              const SizedBox(height: 25,), 
              const Text('Minimal Shop', style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),), 
        
               const SizedBox(height: 5,), 
               Text('Seamless Shopping Experience', 
               style: TextStyle(fontSize: 18),), 
              const Text('Premium Quality Products', style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w300),), 
        
              const SizedBox(height: 180,), 
              GestureDetector( 
                onTap: () {
                  Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MinimalShop()),
              );
                },
                child: Container(
                  height: 50, width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  child: Align(child: Text('Enter Shop', style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),)),
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}