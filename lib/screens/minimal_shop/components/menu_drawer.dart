import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MenuDrawer extends StatelessWidget {
   MenuDrawer({
    required this.title, required this.icon, required this.onTap, 
    super.key,
  });

  String title; 
  final IconData icon;  
  GestureTapCallback ? onTap;

  // final void Function()? onTap; 

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector( 
        onTap: onTap,  
        child: ListTile(
          title: Text(title, 
          style: TextStyle(
            color: Colors.black,),
            
            
        ), leading: Icon(icon),
        ),
      ),
    );
  }
}