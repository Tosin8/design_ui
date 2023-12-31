
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
        decoration: const BoxDecoration(
          color: Color(0xfffd9b42), 
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, ), 
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
            const Padding(
              padding: EdgeInsets.only(left: 150,),
              child: Text('Hooliday',
               style: TextStyle(fontSize: 20),),
            ),
             const SizedBox(height: 40,), 
        
               SimpleShadow(
                 child: Image.asset('assets/travel_ui/travel.png', 
                 ),
               ),
               const SizedBox(height: 30), 
             const Padding(
               padding: EdgeInsets.only(left: 25.0),
               child: Text('We will \ntake care', style: TextStyle(fontSize: 40, 
               fontWeight: FontWeight.w600),),
             ),
             const SizedBox(height: 20), 
             const Padding(
               padding: EdgeInsets.only(left: 25.0),
               child: Text('of tickets, transfers and a cool\nplace to stay.', 
               style: TextStyle(fontSize: 20),),
             ),  
             const SizedBox(height: 150), 
              Padding(
               padding: EdgeInsets.only(left: 25.0),
               child: Row(
                children: [
                  GestureDetector(
                    onTap: (){},
                    child: Text('Skip'))
                ],
               ),
             )
                  ],
            ),
          ), 
          
        ), 
        Container(
        decoration: const BoxDecoration(
          color: Colors.blue, 
          ),
        ), 
        Container(
        decoration: const BoxDecoration(
          color: Colors.green, 
          ),
        ), 
          ], 
        ),
      ),
    );
  }
}


