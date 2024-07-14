import 'package:flutter/material.dart';
import 'package:ui_design/screens/grocery/grocery_home.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector( 
      onTap: () {
        Navigator.push(context, 
        MaterialPageRoute(builder: (context) => const GroceryHome()),);
      },
      child: Container(
        height: 100, width: 300,
        decoration: BoxDecoration(
          color: Colors.green, 
          borderRadius: BorderRadius.circular(20), 
        ),
      ),
    );
  }
}