import 'package:flutter/material.dart';

import 'constants/main_button.dart';

class GrocerySplash extends StatelessWidget {
  const GrocerySplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 400, 
            width: double.infinity, 
            child: Image.asset('assets/grocery/splash.jpg'),
          ), 
          const SizedBox(height: 10,), 
          const Text('Grocery Delivery\nat your door', 
          style: TextStyle(fontWeight: FontWeight.bold,
           fontSize: 18),
          textAlign: TextAlign.center,), 
          const SizedBox(height: 10,), 
          const Text('Order groceries from anywher \n get it delivered at your doorsteps', 
          style: TextStyle(color: Colors.grey, 
           fontSize: 12), textAlign: TextAlign.center,
          ), 
          SizedBox(height: 10,), 
          MainButton()
        ],
      ),
    );
  }
}

