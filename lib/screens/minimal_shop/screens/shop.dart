import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:ui_design/screens/minimal_shop/components/product_tile.dart';
import 'package:ui_design/screens/minimal_shop/model/shop.dart';

import '../components/app_drawer.dart';

class MinimalShop extends StatelessWidget {
  const MinimalShop({super.key});

  @override
  Widget build(BuildContext context) {

    // access products in shop. 
    final minimalProduct = context.watch<Shop>().shop; 
    return Scaffold( 
      drawer: const MinimalDrawer(),
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      appBar: AppBar(
      title: const Text('Minimal Shop',
       style: TextStyle(
        color: Colors.black,
         fontSize: 16),), 
      centerTitle: true,
      ),
    
    body: ListView.builder(
      itemCount: minimalProduct.length,
      itemBuilder: (context, index){
        // get each individual product from shop
//final product = minimalProduct[index]; 

// return as a product title UI
return ProductTile( minimalProduct: minimalProduct[index],); 


      }), 
    );
  }
}

