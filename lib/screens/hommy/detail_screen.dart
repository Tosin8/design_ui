// ignore_for_file: public_member_api_docs, sort_constructors_first
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
          Container(
          width: double.infinity,
          height: 630,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(35), 
            bottomRight: Radius.circular(35), 
          ),
          image: DecorationImage(
            image: AssetImage('recommendProducts.image'),
            fit: BoxFit.cover,
          ),
        ),
        ),

        // Product Stack Widgets. 
        Column(
        
          children: [
           const SizedBox(height: 30,),

            // appbar.             
            Padding(
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

const Spacer( flex: 1,), 
// Card Details. 
Container(
  height: 330, width: 360,
  decoration: BoxDecoration(
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
          const Text('recommendProducts.title', style: TextStyle(
            fontSize: 20,
             fontWeight: FontWeight.bold,
             wordSpacing: 1.3 ),
             ), 
              const SizedBox(height: 6,), 
             Text('recommendProducts.category' , style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, 
             color: Colors.black.withOpacity(0.5)),), 
             const SizedBox(height: 6,), 
             const Text('\$recommendProducts.price' , style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Colors.black),), 
    const SizedBox(height: 10,), 
             // Reviews Section. 
             Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
               const Icon(Icons.star, 
               color: Colors.yellow, size: 20,), 
               const SizedBox(width: 4,), 
               const Text('4.5', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),),
               const SizedBox(width: 4,),
               Text('(12 Reviews)', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black.withOpacity(0.5)),),
             ],), 
    const SizedBox(height: 10,), 
             // Descriptions . 
             const AnimatedReadMoreText(
              
              'Here is a short product description for a furniture chair . Elevate your living space with the timeless elegance of our Vintage Leather Accent Chair. Meticulously handcrafted with top-grain leather upholstery, this chair exudes a warm, inviting appeal. The button-tufted backrest and rolled arms offer exceptional comfort, while the sturdy kiln-dried hardwood frame ensures lasting durability. ', 
              maxLines: 3, 
              animationCurve: Curves.easeInOut, animationDuration: Duration(seconds: 2),
              readMoreText: 'Expand',
              readLessText: 'Collapse',
              buttonTextStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.blue),),  
              const SizedBox(height: 20,),
              Container( 
                height: 50, width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), 
                  color: Colors.black
                ),
                child: const Align(child: Text('Add to cart', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),)),
              )
        ],
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

// With its rich caramel hue and distressed finish, this chair seamlessly blends vintage charm with modern sophistication, making it a stunning addition to any room. Bring sophisticated style and unparalleled relaxation into your home with this exquisite chair.