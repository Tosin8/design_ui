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


const defaultPadding = 20.0; 
const cartBarHeight = 100.0; 
const headerHeight = 85.0; 
const bgColor = Color(0xfff6f5f2); 
const primaryColor = Color(0xff40a944);

const panelTransition = Duration(milliseconds: 500);
