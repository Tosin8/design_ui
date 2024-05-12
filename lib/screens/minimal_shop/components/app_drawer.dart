import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../screens/cart.dart';
import '../screens/splash.dart';
import 'menu_drawer.dart';

class MinimalDrawer extends StatelessWidget {
  const MinimalDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child:  Column(
        children: [
    
          DrawerHeader(
            child: Center(
            child: Icon(Icons.shopping_bag, size: 72),
          )), 
    
          // ListTile 
          MenuDrawer(
            title: 'Home',
            icon: Iconsax.home, 
            onTap: () {
              
            },
          ),
    
          MenuDrawer(
            title: 'Cart',
            icon: Iconsax.shopping_bag, 
            onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const MinimalCartScreen()));
            },
          ),  
           MenuDrawer(
            title: 'WishList',
            icon: Iconsax.lovely, 
            onTap: () {
              
            },
          ),
          SizedBox(height: 300,), 
           MenuDrawer(
            title: 'Exit',
            icon: Iconsax.logout, 
            onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const MinimalSplash()));
            },
          ),  
        ],
      )
    );
  }
}

