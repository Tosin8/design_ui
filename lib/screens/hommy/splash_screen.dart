
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:glass/glass.dart';
import 'package:iconsax/iconsax.dart';


class Hommy extends StatelessWidget {
  const Hommy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Container(
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/furniture_grid/4.jpg',), fit: BoxFit.cover)
    ),
    child: Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomRight, 
          colors: [
            Colors.black, 
            Colors.transparent, 
          ])
      ),
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          const SizedBox(height: 100,),
          const Padding(
            padding: EdgeInsets.only(left: 18.0),
            child: Text('Everything\nyour home\ndeserves',
             style: TextStyle(
               fontWeight: FontWeight.bold,   
               color: Colors.white, 
               fontSize: 30,
               letterSpacing: 2.0)),
          ),
          const SizedBox(height: 20,), 
          const Padding(
            padding: EdgeInsets.only(left: 18.0),
            child: Text('Total Furniture Solutions for Hotels\nApartments, Residence and Commercial\nOffice Residence. ', 
            style: TextStyle(color: Colors.white),),
          ), 

          const SizedBox(height: 320,), 
          Center(
          
              child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
                child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                  height: 60, width: 250,
                  decoration: BoxDecoration(
                  // gradient: LinearGradient(
                  // begin: Alignment.topLeft,
                  // end: Alignment.bottomCenter, 

                  // colors: [
                  // Colors.white60, Colors.white10, 
                  
                  // ]),
                    
                    borderRadius: BorderRadius.circular(20), 
                color: Colors.white.withOpacity(0.3), 
                  ),
                
                  child: const Center(
                    child: Row(
                      children: [
                        Text('Get Started',
                        style: TextStyle(color: Colors.white, fontSize: 15),),
                        ShimmerArrows(), 
                      ],
                    ),
                  )
                
                ),
              ),
            ),
          )
          
        ],
      ),
    ),
    )
    );
  }
}

class ShimmerArrows extends StatefulWidget {
  const ShimmerArrows({super.key});

  @override
  State<ShimmerArrows> createState() => _ShimmerArrowsState();
}

class _ShimmerArrowsState extends State<ShimmerArrows> {
  @override
  Widget build(BuildContext context) {
    return ShaderMask( 
      shaderCallback: (bounds) => const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter, 
        colors: [
          Colors.white10, Colors.white, Colors.white10, 
        ]).createShader(bounds), 
      child: const Row( 
      children: [
      Icon(Icons.arrow_forward_ios,),
      ],),
    );
  }
}