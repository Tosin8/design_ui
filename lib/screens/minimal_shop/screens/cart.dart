import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/app_drawer.dart';
import '../model/shop.dart';

class MinimalCartScreen extends StatelessWidget {
  const MinimalCartScreen({super.key});


// remove item from cart method 
void removeItemFromCart(BuildContext context) {}
  @override
  Widget build(BuildContext context) {

    // get access to the cart. 

    final cart = context.watch<Shop>().cart;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      drawer: const MinimalDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,  
       title: const Text('Minimal Cart', style: TextStyle(color: Colors.black, fontSize: 16),), 
      centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {

                // get individual item to cart. 
                final item = cart[index];

                // return as a cart title UI. 
                return ListTile(
                  title: Text(item.name), 
                  subtitle: Text(item.price.toString(), 
                  ),
                  trailing: IconButton(
                    onPressed: () => removeItemFromCart(context), icon: Icon(Icons.remove)),
                ); 
              }, 
              itemCount: cart.length)),
        ],
      )
    );
  }
}