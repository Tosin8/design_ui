
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:ui_design/screens/hommy/home.dart';



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
               color: Colors.black, 
               fontSize: 30,
               letterSpacing: 3.0)),
          ),
          const SizedBox(height: 20,), 
          const Padding(
            padding: EdgeInsets.only(left: 18.0),
            child: Text('Total Furniture Solutions for Hotels\nApartments, Residence and Commercial\nOffice Residence. ', 
            style: TextStyle(color: Colors.black),),
          ), 

          const SizedBox(height: 300,), 

          // buttton
          GestureDetector( 
            onTap: () {
               Get.to(() => 
                      const Hommy1(),
                    ); 
            },
            child: Center(
            
                child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                  child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    height: 60, width: 250,
                    decoration: BoxDecoration(    
                      borderRadius: BorderRadius.circular(20), 
                  color: Colors.white.withOpacity(0.3), 
                    ),
                  
                    child: const Align(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Get Started',
                          style: TextStyle(color: Colors.white, fontSize: 15),),
                          SizedBox(width: 16), 
                          ShimmerArrows(), 
                        ],
                      ),
                    )
                  
                  ),
                ),
              ),
            ),
          ), 

          const SizedBox(height: 20,), 
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                const Text('Already have an account?', style: TextStyle(color: Colors.white),
                ), 
                const SizedBox(width:2,), 
                TextButton(
                  onPressed: () {
                   
                  },
                  child: const Text('Sign In', style: TextStyle(color: Colors.blue),)), 
              ],
            ),
          const SizedBox(height: 20,), 
          
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

class _ShimmerArrowsState extends State<ShimmerArrows>
with SingleTickerProviderStateMixin
 {
  late final AnimationController _animationController; 

  @override
  void initState() {
    _animationController = AnimationController.unbounded(
      vsync: this
    )..repeat(
      min: -0.3, max: 1.4, 
      period: const Duration(seconds: 1), 
    ); 
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder( 
      animation: _animationController,
      builder: (_,child) {
        
      
      return ShaderMask( 
        shaderCallback: (bounds) =>  LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight, 
          transform: _SlideGradientTransform(
            percent: _animationController.value),
          colors:  [
            Colors.white, 
             Colors.white10, 
             Colors.white.withOpacity(0.1), 
          ]).createShader(bounds), 
        child: child, 
      ); 
      }, 
      child: const Row( 
          mainAxisSize: MainAxisSize.min,
        children: [
        Align(
      
          child: Icon(Icons.arrow_forward_ios,size: 13, color: Colors.white,)),
             Align(
          
          child: Icon(Icons.arrow_forward_ios,color: Colors.white,  size: 13,)),   Align(
      
          child: Icon(Icons.arrow_forward_ios, size: 13, color: Colors.white,)),
        ],),

    ); 
    
  }
}

class _SlideGradientTransform extends GradientTransform {

  final double percent;

  _SlideGradientTransform({required this.percent}); 
  @override
  Matrix4? transform(Rect bounds, {TextDirection? textDirection}) {
   return Matrix4.translationValues(bounds.height* percent, 0, 0); 
  }
  
}