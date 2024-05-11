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
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center, 
          children: [

            // logo
            Icon(Icons.shopping_bag, size: 80, color: Theme.of(context).colorScheme.inversePrimary,) , 

            const SizedBox(height: 25,), 
            const Text('Minimal Shop', style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),), 

             const SizedBox(height: 5,), 
            const Text('Premium Quality Products', style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w300),), 

            const SizedBox(height: 200,), 
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
      )
    );
  }
}