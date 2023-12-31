
// using swipe pub dev. 
import 'package:flutter/material.dart';

class HomeSwipe extends StatefulWidget {
  const HomeSwipe({super.key});

  @override
  State<HomeSwipe> createState() => _HomeSwipeState();
}

class _HomeSwipeState extends State<HomeSwipe> {
  @override
  Widget build(BuildContext context) {
    int page = 0; 
    final pages = [
      
    ]; 
    return PageView(
      children: [
Container(
decoration: BoxDecoration(
  color: Color(0xfffd9b42), 
  ),
  child: Column(
    children: [
      Text('Hooliday'), 
    ],
  )
), 
Container(
decoration: BoxDecoration(
  color: Colors.blue, 
  ),
), 
Container(
decoration: BoxDecoration(
  color: Colors.green, 
  ),
), 
      ], 
    );
  }
}


