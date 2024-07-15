import 'package:flutter/material.dart';
import 'package:ui_design/screens/grocery/grocery_home.dart';

import 'scale_transition.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector( 
      onTap: () =>
        Navigator.push(context, 
        // MaterialPageRoute(builder: (context) => ScaleTransitionHome (GroceryHome())),
         ScaleTransitionHome(page: const GroceryHome()),
        ), 
      
      child: Container(
        height: 60, width: 250,
        decoration: BoxDecoration(
          color: Colors.green, 
          borderRadius: BorderRadius.circular(50), 
        ),
        child: const Align(child: Text('Order Now', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),)),
      ),
    );
  }
}




