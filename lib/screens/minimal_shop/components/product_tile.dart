// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:ui_design/screens/minimal_shop/model/product.dart';

import '../model/shop.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({
    Key? key,
    required this.minimalProduct,
  }) : super(key: key);

final MinimalProduct minimalProduct; 

// add to cart button pressed. 

void addToCart(BuildContext context) {
  // show a dialog bo to ask user to confirm to cart. 
  showDialog(context: context, 
  builder: (context) =>  AlertDialog(
    content: Text(
      'Add this item to your cart?'),
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
          context.read<Shop>().addToCart(minimalProduct);
        }, 
         child: const Text('Yes'), ),
    ],
  )); 
}

  @override
  Widget build(BuildContext context) {
    return Container(
width: 320,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
             spreadRadius: 1, blurRadius: 5, 
            offset: const Offset(0, 1),
            ), 
        ],
        
          borderRadius: BorderRadius.circular(12), 
          color: Colors.white.withOpacity(0.7)),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(15), 
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          // Product Image. 
         Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            
                // product image
                Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(image: AssetImage(minimalProduct.image), fit: BoxFit.cover),
                  ),
                  //child: Image.asset(minimalProduct.image)
                  ), 
                const SizedBox(height: 20,), 
                // product nname 
               
                Text(minimalProduct.name, 
                
                  style: const TextStyle(
                    fontSize: 16.0, 
                  color: Colors.black, 
                  fontWeight: FontWeight.bold, 
                  overflow: TextOverflow.ellipsis, 
                  ),),
                const SizedBox(height: 15,), 
                
                // product description 
                AutoSizeText(minimalProduct.description, 
                  softWrap: true,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,),
              ],
            ),
          


          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('\$${minimalProduct.price}', 
              style: const TextStyle(
                fontSize: 18, 
                fontWeight: FontWeight.bold),),
              Container(
height: 50, width: 50,
                decoration: BoxDecoration(
                     color: Colors.white, 
                  borderRadius: BorderRadius.circular(10), 
                ),
                child: IconButton(
                  icon: const Icon(Icons.add), 
                  onPressed: () => addToCart(context), 
                  color: Colors.black,),
              )
            ],
          ), 
        ],
      ),
    );
  }
}
