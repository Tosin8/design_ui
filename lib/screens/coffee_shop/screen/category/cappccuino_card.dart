// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';

import 'package:ui_design/screens/coffee_shop/model/category/cappccuino.dart';

class CappccuinoCard extends StatelessWidget {
  const CappccuinoCard({
    Key? key,
    required this.cappccuinos,
  }) : super(key: key);

final Cappccuino cappccuinos; 
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:() {
        
      },
      child: AnimatedContainer(
        duration: Duration(
          milliseconds: 300
          ),
           decoration:  BoxDecoration(
        color: Colors.white, 
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2), 
            blurRadius: 20, 

            offset: const Offset(0, 5), 
          )
        ]
          ), 
          child: 
      SingleChildScrollView(
        child: Hero(
          tag: '',
          child: Stack(
            children: [
            Column(
            
                 children: [
  
                  const SizedBox(height: 40,), 
                   Text(
                    cappccuinos.title, 
                   style: const TextStyle(
                    fontSize: 30,
                     fontWeight: FontWeight.bold),),

                     const SizedBox(height: 8),

                     // Rating
                     Container(
                      height: 20, width: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30), 
                      ),
                       child: Row(
                        children: [
                          Icon(Iconsax.star, color: Colors.white, size: 12,),
                          Text(cappccuinos.rating.toString(), style: TextStyle(color: Colors.white),),
                        ],
                       ),
                     ), 

                     
                     Row(
                       children: [
                         Column(
                           children: [
                             Text(
                                                 cappccuinos.volume,
                              style: TextStyle(
                                fontSize: 16,
                               color: Colors.black.withOpacity(0.7)),
                               ),
                               Text('${cappccuinos.price}', style: TextStyle(
                                 
                               )), 
                           ],
                         ),
                         Expanded(
                          child: Container(
                            height: 40, 
                            width: 40,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10), 
                                ),
                                color: Colors.black,
                              ),
                              child: const Icon(Icons.add, color: Colors.white,
                              size: 20,),)),
                       ],
                     ),  
            //const SizedBox(height: 3),
                     
                      
                            const SizedBox(width: 5,), 
                        
                          ],
                        ) , 
                        Positioned(
                          child: Image.asset(cappccuinos.image, height: 200, width: 200,)),
                 ],
               ),
              
          
        ),
      ),
     ) );
  }
}
