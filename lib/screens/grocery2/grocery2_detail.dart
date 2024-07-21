import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'model/product_model.dart';

class Grocery2Detail extends StatelessWidget {
  final GroceryProduct groceryproduct;

  const Grocery2Detail({
    super.key,
    required this.groceryproduct,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
        ),
      ),
      body: Stack(
        children: [
          // Background color 
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.black,
            ),
          ),
         
         // product description card. 
         FadeInUp( 
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOutSine, 
           child: Container(
             width: double.infinity,
             height: 700,
             margin: const EdgeInsets.only(top: 250),
             decoration: const BoxDecoration(
               color: Colors.white,
               borderRadius: BorderRadius.only(
                 topLeft: Radius.circular(40),
                 topRight: Radius.circular(40),
               ),
             ),
             child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 // product name. 
                 Padding(
                   padding: const EdgeInsets.only(
                     top: 80,
                     left: 20,
                     right: 20,
                   ),
                   child: FadeInUp(

delay: const Duration(milliseconds: 500),
duration: const Duration(milliseconds: 1000),
                     child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Text(
                           groceryproduct.name,
                           style: const TextStyle(
                             color: Colors.black,
                             fontSize: 20,
                             fontWeight: FontWeight.bold, 
                                        ), 
                                       ),
                                       Text(
                          '\$${groceryproduct.price}',
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold, 
                          ), 
                        ),
                       ],
                     ),
                   )), 
                const SizedBox(height: 20,), 
           
                // product description.
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  child: FadeInUp( 
                    delay: const Duration(milliseconds: 1000),
                    duration: const Duration(milliseconds: 1200),
                    child: Text(
                      groceryproduct.description,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w400, 
                      ), 
                    ),
                  ),
                ),
                const SizedBox(height: 100,), 
                FadeInUp( 
                  delay: const Duration(milliseconds: 1200),
                  duration: const Duration(milliseconds: 1200),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                             
                      // // quality counter
                      // Padding(
                      //   padding: const EdgeInsets.only(
                      //     left: 20,
                      //   ),
                      //   child: Row(
                      //     children: [
                      //       Container(
                      //         height: 30, width: 30,
                      //        decoration: const BoxDecoration(
                      //         color: Colors.black, 
                      //         borderRadius: BorderRadius.all(Radius.circular(5)),
                      //        ),
                      //        child: const Center(child: Text('-', style: TextStyle(fontSize: 30, color: Colors.white),)),
                      //       ),
                      //         SizedBox(width: 12,),  
                      //        const Text(
                      //           ' 1',
                      //           style: TextStyle(
                      //             color: Colors.black,
                      //             fontSize: 20,
                      //             fontWeight: FontWeight.bold, 
                      //           ), 
                      //         ),
                      //         SizedBox(width: 12,), 
                      //         Container(
                      //         height: 30, width: 30,
                      //        decoration: const BoxDecoration(
                      //         borderRadius: BorderRadius.all(Radius.circular(5)), color: Colors.black
                      //        ),
                      //        child: const Align(child: Text('+', style: TextStyle(fontSize: 30, color: Colors.white),)),
                      //       ), 
                            
                      //     ],
                      //   )
                      // ), 
                      // add to cart button. 
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 20,
                        ),
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 60, width:  350,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Align(
                              child: Text(
                                'Add to cart',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold, 
                                ), 
                              ),
                            ),
                          ),
                        )
                      ),
                      const SizedBox(width: 6,), 
                      // buy now button.
                    
                    ],
                  ),
                )
               
           ] )
           ),
         ), 

         // product image. 
         Positioned(
           top: 100,
           left: 20,
           right: 20,
           child: Hero(
             tag: groceryproduct.image,
             child: Image.asset(groceryproduct.image),
           ),
         ),
        ],
      ),
    );
  }
}
