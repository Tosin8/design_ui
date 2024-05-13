import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_design/screens/minimal_shop/model/product.dart';

import '../components/app_drawer.dart';
import '../components/payment_button.dart';
import '../model/shop.dart';

class MinimalCartScreen extends StatelessWidget {
  const MinimalCartScreen({super.key});


// remove item from cart method 
void removeItemFromCart(BuildContext context, MinimalProduct minimalProduct) {


// showing a dialog box to suer to confirm removing of item from cart. 
   showDialog(context: context, 
  builder: (context) =>  AlertDialog(
    content: const Text(
      'Remove this item from your cart?'),
    actions: [
      // cancel button 
      MaterialButton(
        onPressed: () => Navigator.pop(context),
         child: const Text('Cancel')),

          // yes button 
      MaterialButton(
      
        onPressed: () { 
          Navigator.pop(context); 

          // add to cart. 
          context.read<Shop>().removeFromCart(minimalProduct);
        }, 
         child: const Text('Yes'), ),
    ],
  ), 
  ); 
}

// User pressed pay button 
void payButtonPressed(BuildContext context){
  showDialog(context: context,
   builder: (context) => AlertDialog(
     content: Text('Proceed to checkout?'),
   ));
}
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
            child: cart.isEmpty ? const Center(child: Text('Your cart is empty')) : ListView.builder(
              itemBuilder: (context, index) {

                // get individual item to cart. 
                final item = cart[index];

                // return as a cart title UI. 
                return ListTile(
                  title: Text(item.name), 
                  subtitle: Text(item.price.toString(), 
                  ),
                  trailing: IconButton(
                    onPressed: () => removeItemFromCart(
                      context, item), icon: const Icon(Icons.remove)),
                ); 
              }, 
              itemCount: cart.length)),

              // pay button
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: PaymentButton(onTap: () => payButtonPressed(context), text: 'CHECKOUT'),
              ), 
              SizedBox(height: 5,), 
        ],
      )
    );
  }
}