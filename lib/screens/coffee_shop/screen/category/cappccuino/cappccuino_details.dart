// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'package:ui_design/screens/coffee_shop/model/category/cappccuino.dart';

class CappccuinoExpanded extends StatefulWidget {
  const CappccuinoExpanded({
    Key? key,
    required this.cappccuinos,
  }) : super(key: key);

final Cappccuino cappccuinos;

  @override
  State<CappccuinoExpanded> createState() => _CappccuinoExpandedState();
}

class _CappccuinoExpandedState extends State<CappccuinoExpanded> with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
     duration: const Duration(seconds: 1)); 
  late final Animation<double> _animation = CurvedAnimation(parent: _controller, 
  curve: Curves.bounceIn);

   @override
  void dispose() {
    _controller.dispose(); 
    
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          // Product Card Details. 
          Positioned( 
            top: 330, 
            child: FadeInLeft(
              duration: const Duration(milliseconds: 1000),
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
                                            Text(widget.cappccuinos.rating.toString(), style: const TextStyle(color: Colors.white),
                                            ),
                                            const SizedBox(width: 3,),
                                          ],
                                         ),
                                       ),
                                     
                    const SizedBox(height: 10,),           
                                     // Title and Price
                                     
                                        Text(widget.cappccuinos.title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                                        ),
                                        const SizedBox(height: 10,), 
                  
                                        Text('\$${widget.cappccuinos.price.toString()}',
                                         style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                                        ), 
                                        
                                          
                        const SizedBox(height: 10,),                  
                  
                  const Text('Coffee Size', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),)
                                      ],
                                     ),
                )
                  
                
              ),
            ),
          ), 

          // Buy Button
          Positioned( 
            bottom: 30,
            child: FadeInUp(
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  children: [
                    Container(
                      height: 60, width: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle, 
                        
                        border: Border.all(
                          color:const Color.fromARGB(255, 107, 85, 39).withOpacity(0.9, ) ,    width: 2)
                      ),
                      child: Icon(Iconsax.bag, color: const Color.fromARGB(255, 107, 85, 39).withOpacity(0.9, )  ),  
                    ), 
                    const SizedBox(width: 30,),
                    Container(
                      height: 60, width: 230,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30), 
                        color: const Color.fromARGB(255, 107, 85, 39).withOpacity(0.9, )   , 
                      ),
                      child: const Align(child: Text('Buy now', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),)),
                    )
                  ],
                ),
              ),
            ),
          ), 

          // Background Product
          Positioned(
            top: 0,
            child: FadeInDown(
              child: Container(
                height: 250, width: 400, 
               
              decoration:  BoxDecoration(
                 gradient: LinearGradient(
                  colors: [
               
                          const Color(0xffffe5b4), 
                          
                          const Color.fromARGB(255, 86, 66, 20).withOpacity(0.9, )   
                 ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                )
              ),
              ),
            ),
          ), 
          
          // customized appbar. 
          Positioned(
            top: 50,
            child: FadeIn(
              child: Padding( 
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    GestureDetector( 
                      onTap: () {
                        Get.back();},
                      child: Container(
                        height: 40, width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle, 
                          border: Border.all(width: 2, color: Colors.white), 
                        ),
                        child: const Align(
                          child: Icon(Icons.arrow_back_ios_outlined, color: Colors.white,
                          ),
                        ),
                      ),
                    ), 
                    const SizedBox(width:280,), 
                     Container(
                      height: 40, width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle, 
                        border: Border.all(width: 2, color: Colors.white), 
                      ),
                      child:  const Align(child: Icon(Icons.favorite, color: Colors.white,)),),
                    
                  ],
                ),
              ),
            ),
          ), 

          // Product Image
          Positioned( 
            top: 80,
            left: 40, 
            child: FadeIn(
              delay: const Duration(milliseconds: 1200),
              child: Container(
                  height: 280, width: 400,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(widget.cappccuinos.image)),
                  ),
                ),
            ),
            ),
            // child: Image.asset(
            //   cappccuinos.image,
            // ),
          
        ]
      
      ),
    );
  }
}
