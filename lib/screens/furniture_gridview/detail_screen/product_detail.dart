import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:ui_design/screens/furniture_gridview/model/product.dart';

import '../model/review_card_model.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
            extendBodyBehindAppBar: true,
                   appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
              
            ), 
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite_outline, color: Colors.black),
              )
            ],
                   ),
                  
    body: Stack(
      children: [
        SingleChildScrollView(
           child: Container(
                child: 
                Column(
                  children: [
                    Stack(
                      children:[ Hero(
                          tag: 'products[0].image',
                          child: Container(
                            height: 400,
                            child: Image.asset(products[0].image,  fit: BoxFit.cover,),
                          ),
                        
                      ),
                      Positioned(
                        bottom: 5,
                        left: 100, 
                        child: Container(
                          height: 30,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), ),
                          child: const Text('1/2', style: TextStyle(color: Colors.white),),
                        ),
                      )
                  ]), 
                    const SizedBox(height: 20),
           
                    // title and price 
                    Padding( 
                      padding: const EdgeInsets.all(5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(products[0].title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                           style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                          ), 
                          Text('\$${products[0].price.toString()}', style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 18),)
                        ],
                      ),
                    ), 
                    const SizedBox(height: 10,), 
           
                    // description
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ReadMoreText(
                        products[0].description, 
                        trimLength:3, 
                        trimMode: TrimMode.Line,
                        colorClickableText: Colors.blue,
             trimCollapsedText: 'Show more',
             trimExpandedText: 'Show less',
             moreStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.blue),
             lessStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.blue),
                        style: TextStyle(color: Colors.grey.shade500),),
                    ),
                    
                    // Review. 
                      const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start, 
                            children: [
                              SizedBox(height: 10), 
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Product Rating & Reviews'),
                                  Text('See All', style: TextStyle(color: Colors.blue),)
                                ],
                              ), 
                              SizedBox(height: 10,), 
                              reviewcard(
                                userName: 'Jane Doe',
                                reviewText: 'This is the product i bought and it look really good, recommend for purchase',
                              ), 
                                reviewcard(
                                userName: 'Jane Doe',
                                reviewText: 'This is the product i bought and it look really good, recommend for purchase',
                              ),
                                reviewcard(
                                userName: 'Jane Doe',
                                reviewText: 'This is the product i bought and it look really good, recommend for purchase',
                              ),
                              
                            ]
                          ),
                        ),
                      
                    
                  ],
                ),
              ),
         ),
         
         Positioned(
          bottom: 10,
          left: 120, 
           child: Container(
            decoration: BoxDecoration(color: Colors.blue, 
            borderRadius: BorderRadius.circular(5), ),
            height: 45, width: 180,
            child: const Center(child: Text('Add to Cart', style: TextStyle(fontSize: 16, color: Colors.white),)),
           ),
         )
    ]));
  }
}

