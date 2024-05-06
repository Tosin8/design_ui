// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';

import 'package:ui_design/screens/coffee_shop/model/category/cappccuino.dart';

class CappccuinoExpanded extends StatelessWidget {
  const CappccuinoExpanded({
    Key? key,
    required this.cappccuinos,
  }) : super(key: key);

final Cappccuino cappccuinos;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          // Product Card Details. 
          Positioned( 
            top: 280, 
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(left:20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                
                    // Rating
                    
                                Container(
                                      height: 30,
                                       width: 50,
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(255, 127, 106, 106).withOpacity(0.3),
                                        borderRadius: BorderRadius.circular(50), 
                                      ),
                                       child: Row(
                                    
                                        children: [
                                          const SizedBox(width: 3,), 
                                          const Icon(Iconsax.star1, color: Colors.white, size: 20,),
                                          Text(cappccuinos.rating.toString(), style: const TextStyle(color: Colors.white),
                                          ),
                                          const SizedBox(width: 3,),
                                        ],
                                       ),
                                     ),
                                   
      SizedBox(height: 10,),           
                                   // Title and Price
                                   
                                      Text(cappccuinos.title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                                      ),
                                      SizedBox(height: 10,), 
                
                                      Text('\$${cappccuinos.price.toString()}',
                                       style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                                      ), 
                                      
                                        
                      SizedBox(height: 10,),                  
                
                Text('Coffee Size', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),)
                                    ],
                                   ),
              )
                
              
            ),
          ), 

          // Buy Button
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle, 
                  border: Border.all(color: Colors.blue, width: 2)
                ),
                child: Icon(Iconsax.bag, color: Colors.blue, size: 30,),
              )
            ],
          )
        ]
      
      ),
    );
  }
}
