import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ui_design/screens/minimal_shop/components/menu_drawer.dart';

import 'splash.dart';

class MinimalShop extends StatelessWidget {
  const MinimalShop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      drawer: Drawer(
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
      ),
      appBar: AppBar(
      
      ),
      
    );
  }
}

