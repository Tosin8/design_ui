// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:ui_design/screens/minimal_shop/model/product.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({
    Key? key,
    required this.minimalProduct,
  }) : super(key: key);

final MinimalProduct minimalProduct; 
  @override
  Widget build(BuildContext context) {
    return Container(

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
        children: [

          // Product Image. 
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
          fontWeight: FontWeight.bold),), 

          // product description 
          Text(minimalProduct.description), 

          Text(minimalProduct.price.toString()), 
        ],
      ),
    );
  }
}
