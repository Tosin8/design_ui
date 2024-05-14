import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';
import 'package:ui_design/screens/minimal_shop/components/product_tile.dart';
import 'package:ui_design/screens/minimal_shop/model/shop.dart';
import 'package:ui_design/screens/minimal_shop/screens/cart.dart';

import '../components/app_drawer.dart';

class MinimalShop extends StatelessWidget {
  const MinimalShop({super.key});

  @override
  Widget build(BuildContext context) {

    // access products in shop. 
    final minimalProduct = context.watch<Shop>().shop; 
    return Scaffold( 
      drawer: const MinimalDrawer(),
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      title: const Text('Minimal Shop',
       style: TextStyle(
        color: Colors.black,
         fontSize: 16),), 
      centerTitle: true,
      actions: [
        IconButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder:  (context) => const MinimalCartScreen())), icon: const Icon(Iconsax.shopping_bag,
         color: Colors.black,))
      ],
      ),
    
    body: ListView(
      children: [
        const SizedBox(height: 5,), 
        const Padding(
          padding: EdgeInsets.only(left: 20.0), child: Text('Sneakers', style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),)),
          SizedBox(height: 10,), 
        const Text(
            'Browse through our selected \npremium NIKE products', 
            textAlign: TextAlign.center,),  
      SizedBox(
        height: 550, 
        width: 500,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: minimalProduct.length,
          padding: const EdgeInsets.all(15), 
          itemBuilder: (context, index){
            // get each individual product from shop
        //final product = minimalProduct[index]; 
        
        // return as a product title UI
        return ProductTile( minimalProduct: minimalProduct[index],); 
        
        
          }),
      ),
   ] ), 
    );
  }
}

