import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../screens/cart.dart';
import '../screens/shop.dart';
import '../screens/splash.dart';
import 'menu_drawer.dart';

class MinimalDrawer extends StatelessWidget {
  const MinimalDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[300], 
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
            Navigator.push(context,
             MaterialPageRoute(builder: (context) => const MinimalShop()));
            },
          ),
          MenuDrawer(
            title: 'Categories',
            icon: Iconsax.message, 
            onTap: () {
              
            },
            
          ),
    
          
           MenuDrawer(
            title: 'WishList',
            icon: Iconsax.lovely, 
            onTap: () {
              
            },
          ),
          MenuDrawer(
            title: 'Profile',
            icon: Iconsax.user, 
            onTap: () {
              
            },
          ),
           MenuDrawer(
            title: 'Notifications',
            icon: Iconsax.notification, 
            onTap: () {
              
            },
          ),
          MenuDrawer(
            title: 'Customer Service',
            icon: Iconsax.message, 
            onTap: () {
              
            },
            
          ),
         
          SizedBox(height: 50,), 
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

