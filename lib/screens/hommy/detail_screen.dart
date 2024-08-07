// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:animate_do/animate_do.dart';
import 'package:animated_read_more_text/animated_read_more_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'package:ui_design/screens/hommy/home.dart';
import 'package:ui_design/screens/hommy/models/product.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({
    Key? key,
    required this.recommendProducts,
  }) : super(key: key);

final Product recommendProducts; 
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: Colors.grey[100],
      body: Stack(
        children: [
          Hero(
            tag: recommendProducts.image, 
            child: Container(
            width: double.infinity,
            height: 630,
                    decoration:  BoxDecoration(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(35), 
              bottomRight: Radius.circular(35), 
            ),
            image: DecorationImage(
              image: AssetImage(recommendProducts.image),
              fit: BoxFit.cover,
            ),
                    ),
                    ),
          ),

        // Product Stack Widgets. 
        Column(
        
          children: [
           const SizedBox(height: 30,),

            // appbar.             
            FadeIn(
              duration: const Duration(milliseconds: 1000),
              curve: Curves.easeIn,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 45, height: 45, 
                      decoration: BoxDecoration(
                        shape: BoxShape.circle, 
                        color: Colors.white.withOpacity(0.4), 
                      ),
                      child: IconButton(onPressed: (){
                        Get.to(() => const Hommy1());
                      }, icon: const Icon(Icons.arrow_back_ios, color: Colors.black,), 
                      ),
                    ),
                    Container(
                      width: 45, height: 45, 
                      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white.withOpacity(0.4)),
                      child: IconButton(
                        onPressed: (){},
                         icon: const Icon(Iconsax.heart, color: Colors.black,
                         ),),
                    ), 
                  ] 
                )),
            ), 

const Spacer( flex: 1,), 


// Card Details. 
FadeIn(
  duration: const Duration(milliseconds: 1000), 
  delay: const Duration(milliseconds: 500),
  curve: Curves.easeOutQuad, 
  child: Container(
    height: 330, width: 360,
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.grey.shade200, 
          blurRadius: 1.0,
          spreadRadius: 1.0, 
          offset: Offset.zero
        
        )
      ],
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
    ),
    child:  SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             FadeInLeft(
              duration: const Duration(milliseconds: 1200),
              curve: Curves.easeInCubic, 
               child: Text(recommendProducts.title, 
               style: const TextStyle(
                fontSize: 20,
                 fontWeight: FontWeight.bold,
                 wordSpacing: 1.3 ),
                 ),
             ), 
                const SizedBox(height: 6,), 

               FadeInLeft(
                duration: const Duration(milliseconds: 1200), 
                delay: const Duration(milliseconds: 500),
                curve: Curves.easeInCubic,
                 child: Text(recommendProducts.category , style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700, 
                 color: Colors.black.withOpacity(0.5)),),
               ), 
               const SizedBox(height: 6,), 

                FadeInLeft(
                  delay: const Duration(milliseconds: 500), 
                  duration: const Duration(milliseconds: 1000),
                  curve: Curves.easeInCubic,
                  child: Text('\$${recommendProducts.price}' , style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Colors.black),)), 
      const SizedBox(height: 10,), 


               // Reviews Section. 
               FadeIn(
                delay: const Duration(milliseconds: 500),
                duration: const Duration(milliseconds: 2000),
                curve: Curves.easeInCubic,
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                   const Icon(Icons.star, 
                   color: Colors.yellow, size: 20,), 
                   const SizedBox(width: 4,), 
                    Text(recommendProducts.rating, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),),
                   const SizedBox(width: 4,),
                   FadeIn( 
                    delay: const Duration(milliseconds: 500), 
                    duration: const Duration(milliseconds: 2000), 
                    curve: Curves.easeInCubic, 
                     child: Text('(${recommendProducts.textReviews} Reviews)', style: TextStyle(
                      fontSize: 14,
                       fontWeight: FontWeight.w500, 
                       color: Colors.black.withOpacity(0.5)
                       ),
                     ),
                   ),
                 ],),
               ), 
      const SizedBox(height: 10,), 
               // Descriptions . 
                FadeIn( 
                  delay: const Duration(milliseconds: 1000), 
                  duration: const Duration(milliseconds: 2000),
                  child: AnimatedReadMoreText(
                  
                  recommendProducts.description, 
                  maxLines: 3, 
                  animationCurve: Curves.easeInOut, animationDuration: const Duration(seconds: 2),
                  readMoreText: 'Expand',
                  readLessText: 'Collapse',
                  buttonTextStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.blue),),
                ),  
                const SizedBox(height: 20,),

                // Button Section.
                FadeInUp(
                  delay: const Duration(milliseconds: 300), 
                  duration: const Duration(milliseconds: 1200),
                  curve: Curves.easeInCubic,
                  child: Container( 
                    height: 50, width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20), 
                      color: Colors.black
                    ),
                    child: const Align(child: Text('Add to cart', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),)),
                  ),
                )
          ],
        ),
      ),
    ),
  ),
), 
const SizedBox(height: 40,), 


          ],
        )
     ] ),

    );
  }
}

