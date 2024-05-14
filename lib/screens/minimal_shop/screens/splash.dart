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
        
            mainAxisAlignment: MainAxisAlignment.center, 
            children: [
        
          Container(
      
            child: Padding(
              padding: const EdgeInsets.only(left:8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 250,width: 200,
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
                  SizedBox(width: 6,), 
                   Expanded(
                    child: Column(
                    children: [
                      SizedBox(height:10,), 
                       Container(
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
                  SizedBox(height: 10,),
              
                   Container(
                    height:160,width: 170,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(60), 
                        topLeft: Radius.circular(30),
                      ),
                      image: DecorationImage(image: AssetImage('assets/minimal_shop/3.jpg',), fit: BoxFit.cover)
                    ),
                  ),
                    ],
                  ))
                ]
              ),
            ),), 
           
        
              const SizedBox(height: 50,), 
              const Text('Minimal Shop', style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),), 
        
               const SizedBox(height: 5,), 
               const Text('Seamless Shopping Experience', 
               style: TextStyle(fontSize: 18),), 
              const Text('Premium Quality Products', style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w300),), 
        
              const SizedBox(height: 180,), 
              GestureDetector( 
                onTap: () {
                  Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MinimalShop()),
              );
                },
                child: Container(
                  height: 50, width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  child: Align(child: Text('Enter Shop', style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),)),
                ),
              )
            ],
          ),
        ),
    
    );
  }
}