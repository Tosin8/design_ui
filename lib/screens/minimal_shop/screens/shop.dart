import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MinimalShop extends StatelessWidget {
  const MinimalShop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      drawer: Drawer(
        backgroundColor: Theme.of(context).colorScheme.background,
        child: Column(
          children: [

            DrawerHeader(child: Center(
              child: Icon(Icons.shopping_bag, size: 72),
            ))
          ],
        )
      ),
      appBar: AppBar(
      
      ),
      
    );
  }
}