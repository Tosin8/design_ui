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
        height: 60, width: 250,
        decoration: BoxDecoration(
          color: Colors.green, 
          borderRadius: BorderRadius.circular(50), 
        ),
        child: Align(child: Text('Order Now', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),)),
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
