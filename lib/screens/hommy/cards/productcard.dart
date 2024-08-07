// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:ui_design/screens/hommy/models/product.dart';

class productCard extends StatelessWidget {
   productCard({
    Key? key,
    required this.recommendProducts,
    required this.press, 
  }) : super(key: key);

final Product recommendProducts; 
GestureTapCallback  press; 
  @override
  Widget build(BuildContext context) {
    return GestureDetector( 
      onTap: press, 
      child: Container(
        height: 300, width: 180,
       
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: recommendProducts.image,
              child: Container(
                height: 200, width: 180,
                decoration: BoxDecoration(image: DecorationImage(
                  image: AssetImage(
                    recommendProducts.image,
                    ), fit: BoxFit.cover),
                     borderRadius: BorderRadius.circular(15)),
              ),
            ), 
            const SizedBox(height: 5,), 

             Text(recommendProducts.title, 
             style: const TextStyle(
              fontWeight: FontWeight.w500,
               fontSize: 18),), 
            Text('\$${recommendProducts.price}', 
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16, 
            color: Colors.black.withOpacity(0.5)),
            ), 
          ], 
        ),
      ),
    );
  }
}

