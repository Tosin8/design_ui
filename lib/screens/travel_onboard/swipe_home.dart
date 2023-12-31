
// using swipe pub dev. 
import 'package:flutter/material.dart';
import 'package:simple_shadow/simple_shadow.dart';

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
    return SafeArea(
      child: Scaffold(
        body: PageView(
          children: [
        Container(
        decoration: BoxDecoration(
          color: Color(0xfffd9b42), 
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, ), 
            child: Column(
                  children: [
            Text('Hooliday',
             style: TextStyle(fontSize: 20),),
             SizedBox(height: 40,), 
             SimpleShadow(
               child: Image.asset('assets/travel_ui/travel.png', 
               ),
             ),  
                  ],
            ),
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
        ),
      ),
    );
  }
}


