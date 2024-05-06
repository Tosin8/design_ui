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
        curve: Curves.easeInOut,
          height: 100, 
              width: 230,
        duration: const Duration(
          milliseconds: 300, 
          
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
          
          
                fit: StackFit.loose, 
                clipBehavior: Clip.none,
            children:[
               Container(
              height: 200, 
              width: 230,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  begin: Alignment.topLeft, end: Alignment.bottomRight,
                   colors: [
            
                     
                    const Color(0xffffe5b4), 
                    
                    const Color.fromARGB(255, 107, 85, 39).withOpacity(0.9, )                ]),
                  
              ),
              child: 
                Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                
                      const SizedBox(height: 60,), 

                      // title
                       Padding(
                         padding: const EdgeInsets.only(left: 20.0),
                         child: Text(
                          cappccuinos.title, 
                         style: const TextStyle(
                          fontSize: 18,color: Colors.white,
                           fontWeight: FontWeight.bold),),
                       ),
              
                         const SizedBox(height: 8),
              
                         // Rating
                         Padding(
                           padding: const EdgeInsets.only(left: 20.0),
                           child: Container(
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
                         ), 
              
                         const SizedBox(height: 10,), 

                      // Volume, price and button
                                                 Padding(
                           padding: const EdgeInsets.only(left: 20.0),
                           child: Row(
                             children: [
                               Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Row(
                                     children: [
                                       Text(
                                        'Volume ',
                                        style: TextStyle(
                                          fontSize: 16,
                                         color: Colors.white.withOpacity(0.7)),
                                         ),
                                         Text(cappccuinos.volume, style: const TextStyle(
                                           fontWeight: FontWeight.bold, color: Colors.white
                                         )), 
                                     ],
                                   ),
                                     const SizedBox(height: 7,), 
                                     Text('${cappccuinos.price}', style: const TextStyle(
                                       color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16
                                     )), 
                                 ],
                               ),
                               Expanded(
                                child: Container(
                                  height: 50, 
                                  width: 20,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                       
                                      color: Colors.white,
                                    ),
                                    child: const Icon(Icons.add, color:    
                    Color.fromARGB(255, 137, 93, 11), 
                                    size: 30,
                                    ),
                                    )
                                    ),
                             ],
                           ),
                         ),  
                
                         
                          
                                const SizedBox(width: 5,), 
                            
                              ],
                            ) , 
               ), 
                            Positioned(
                              top: -250, right: 25,
                            
                              bottom:0,
                              child: Image.asset(cappccuinos.image, height: 260,
                               width: 200,), 
                               ),
                     ],
                   
            ),
          ),
              
          
        ),
      )  );
     
  }
}
