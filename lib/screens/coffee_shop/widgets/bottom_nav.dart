// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:iconsax/iconsax.dart';

class CoffeeBottomNav extends StatelessWidget {
  void Function(int)? onTabChange;
   CoffeeBottomNav({
  super.key, 
   required  this.onTabChange,
  });

  @override
  Widget build(BuildContext context) {
    return Container(

      margin: const EdgeInsets.all(25),
      child: GNav(
        rippleColor: Colors.transparent,
        backgroundColor: Colors.transparent, 
        onTabChange: (value) => onTabChange!(value),
        color: Colors.grey[400], 
        mainAxisAlignment: MainAxisAlignment.center,
        activeColor: Colors.grey[700],
        tabBackgroundColor: Colors.grey.shade300,
        tabBorderRadius: 24, 
        tabActiveBorder: Border.all(color: Colors.white),
        tabs: const [
           GButton(
        
            icon: Iconsax.home, 
            gap: 2,
            text: 'Shop',), 
             GButton(
            icon: Iconsax.shopping_bag, 
            text: 'Cart',), 
             GButton(
            icon: Iconsax.save_2, 
            text: 'Saved',),
        ]
        ,
      ),
    );
  }
}
