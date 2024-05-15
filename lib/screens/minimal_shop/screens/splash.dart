import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui_design/screens/minimal_shop/screens/shop.dart';

class MinimalSplash extends StatelessWidget {
  const MinimalSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        decoration: const BoxDecoration(
         
        ),
        
          child: Column(
        
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, 

            children: [
        
          Container(
      
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 30,), 
                  // Image `1

                   SlideInLeft(
                    duration: const Duration(milliseconds: 1000),
                     child: Container(
                        height: 250,width: 180,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            topRight: Radius.circular(40), 
                            bottomRight: Radius.circular(80), 
                            topLeft: Radius.circular(60), 
                          ),
                          image: DecorationImage(image: AssetImage('assets/minimal_shop/1.jpg',), fit: BoxFit.cover)
                        ),
                      ),
                   ),
                   
                  const SizedBox(width: 10,), 
                   Expanded(
                    child: Column(
                    children: [
                      const SizedBox(height:10,), 

                      // Image `2 
                       SlideInDown(
                        delay: const Duration(milliseconds: 1000),
                        duration: const Duration(milliseconds: 1000),
                         child: Container(
                                             height: 200,width: 160,
                                             decoration: const BoxDecoration(
                                               borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(40), 
                          topRight: Radius.circular(40),
                          bottomRight: Radius.circular(18),
                                               ),
                                               image: DecorationImage(image: AssetImage('assets/minimal_shop/2.jpg',), fit: BoxFit.cover)
                                             ),
                                           ),
                       ), 
                  const SizedBox(height: 10,),
              
              // Image `3
                   SlideInRight(
                    duration: const Duration(seconds: 2),
                    curve: Curves.easeIn,
                     child: Container(
                      height:160,width: 170,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(60), 
                          topLeft: Radius.circular(30),
                        ),
                        image: DecorationImage(image: AssetImage('assets/minimal_shop/3.jpg',), fit: BoxFit.cover)
                      ),
                                       ),
                   ),
                    ],
                  ))
                ]
              ),
            ),
            ), 
           
        
              const SizedBox(height: 30,), 
              FadeIn(
                delay: const Duration(milliseconds: 2500),
                duration: const Duration(milliseconds: 1000),
                child: const Text('Minimal Shop', style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),)), 
        
               const SizedBox(height: 5,), 
               FadeIn(
                delay: const Duration(milliseconds: 2500),
                duration: const Duration(milliseconds: 1000),
                 child: const Text('Seamless Shopping Experience', 
                 style: TextStyle(fontSize: 18),),
               ), 
              FadeIn( 
                delay: const Duration(milliseconds: 2500), 
                duration: const Duration(milliseconds: 1000),
                child: const Text('Premium Quality Products', style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w300),)), 
        
              const SizedBox(height: 180,), 

              // button. 
              GestureDetector( 
                onTap: () {
                  Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MinimalShop()),
              );
                },
                child: Container(
                  height: 50, width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black, 
                  ),
                  child: const Align(child: Text('Enter Shop', style: TextStyle(color: Colors.white),)),
                ),
              ), 
              const SizedBox(height: 10,), 
            ],
          ),
        ),
    
    );
  }
}