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
      decoration: BoxDecoration(color: Theme.of(context).colorScheme.primary),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(25), 
      child: Column(
        children: [

          // Product Image. 
          Image.asset(minimalProduct.image), 

          // product nname 
          Text(minimalProduct.name), 

          // product description 
          Text(minimalProduct.description), 

          Text(minimalProduct.price.toString()), 
        ],
      ),
    );
  }
}
