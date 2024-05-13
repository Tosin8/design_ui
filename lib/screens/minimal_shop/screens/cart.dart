import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
   builder: (context) => const AlertDialog(
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
       
      centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
        const Padding(
          padding: EdgeInsets.only(left: 18.0),
          child: Text('My Cart', style: TextStyle(fontSize: 26,),)), 
             const Padding(
          padding: EdgeInsets.only(left: 18.0),
          child: Text('Check your cart before paying!', style: TextStyle(fontSize: 12,),)), 
          const SizedBox(height: 20,), 
          Expanded(
            child: cart.isEmpty ? const Center(child: Text('Your cart is empty')) : ListView.builder(
              itemBuilder: (context, index) {

                // get individual item to cart. 
                final item = cart[index];

                // return as a cart title UI. 
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: 250,
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [BoxShadow(color: Colors.white.withOpacity(0.7),  spreadRadius: 1, offset: const Offset(0, 1),)],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: ListTile(
                        contentPadding: EdgeInsets.all(1),
                        leading: Container(
                          
                            width: 60, height: 60, 
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(image: AssetImage(item.image), fit: BoxFit.cover),
                            ),
                        ), 
                           // child: Image.asset(item.image)),
                        title: Text(item.name, 
                        style: const TextStyle(
                          color: Colors.black, 
                          fontWeight: FontWeight.bold),), 
                        subtitle: Text("\$${item.price}", 
                        ),
                        
                        trailing: IconButton(
                          onPressed: () => removeItemFromCart(
                            context, item), icon: const Icon(Icons.cancel_outlined)),
                      ),
                    ),
                  ),
                ); 
              }, 
              itemCount: cart.length)),

              // pay button
             Center(
                child: PaymentButton(onTap: () => payButtonPressed(context), text: 'CHECKOUT'),
              ), 
              const SizedBox(height: 5,), 
        ],
      )
    );
  }
}