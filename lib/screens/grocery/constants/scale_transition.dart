import 'package:flutter/material.dart';

class ScaleTransitionHome extends PageRouteBuilder{
  final Widget page; 
  ScaleTransitionHome({required this.page})
  : super(
    pageBuilder: (context, animation, anotherAnimation) => page,
    transitionDuration: const Duration(milliseconds: 1000),
    reverseTransitionDuration: const Duration(milliseconds: 200),
    transitionsBuilder: (context, animation, anotherAnimation, child) {
      animation = CurvedAnimation(
        parent: animation,
        curve: Curves.fastLinearToSlowEaseIn, 
        reverseCurve: Curves.fastOutSlowIn, 
      );
      return ScaleTransition(
        scale: animation,
        alignment: Alignment.bottomCenter,
        child: page
      );
    }
  
  );
}