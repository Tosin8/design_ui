
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
             const SizedBox(height: 130), 
              Padding(
               padding: const EdgeInsets.only(left: 25.0),
               child: Container(
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: (){},
                      child: const Text('Skip')), 
                      Container(
                           width: 50,
                           height: 50,
                           decoration: BoxDecoration(
                             color: const Color(0xFFD9D9D9),
                             
                               borderRadius: BorderRadius.circular(10),
                             
                             boxShadow: const [
                               BoxShadow(
                  color: Color(0x3F000000),
                  blurRadius: 4,
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                               )
                             ],
                           ),
                              child: const Icon(Icons.arrow_forward_ios), 
                         ),
                       // SizedBox(width: 0.5),
                 
                  ],
                 ),
               ),
              
             )
                  ],
            ),
          ), 
          
        ), 
        Container(
        decoration: const BoxDecoration(
          color: Color(0xff8cc1e0), 
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
                 child: Image.asset('assets/travel_ui/payment.png', 
                 ),
               ),
               const SizedBox(height: 20), 
             const Padding(
               padding: EdgeInsets.only(left: 25.0),
               child: Text('Flexible\nPayment', style: TextStyle(fontSize: 40, 
               fontWeight: FontWeight.w600),),
             ),
             const SizedBox(height: 10), 
             const Padding(
               padding: EdgeInsets.only(left: 25.0),
               child: Text('of tickets, transfers and a cool\nplace to stay.', 
               style: TextStyle(fontSize: 20),),
             ),  
             const SizedBox(height: 80), 
              Padding(
               padding: const EdgeInsets.only(left: 25.0),
               child: Container(
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: (){},
                      child: const Text('Skip')), 
                      Container(
                           width: 50,
                           height: 50,
                           decoration: BoxDecoration(
                             color: const Color(0xFFD9D9D9),
                             
                               borderRadius: BorderRadius.circular(10),
                             
                             boxShadow: const [
                               BoxShadow(
                  color: Color(0x3F000000),
                  blurRadius: 4,
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                               )
                             ],
                           ),
                              child: const Icon(Icons.arrow_forward_ios), 
                         ),
                       // SizedBox(width: 0.5),
                 
                  ],
                 ),
               ),
              
             )
                  ],
            ),
          ), 
          
        ), 
         Container(
        decoration: const BoxDecoration(
          color: Color(0xffdf5789), 
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
             const SizedBox(height: 30,), 
        
               SimpleShadow(
                 child: Image.asset('assets/travel_ui/relax.png', 
                 ),
               ),
               const SizedBox(height: 20), 
             const Padding(
               padding: EdgeInsets.only(left: 25.0),
               child: Text('Relax and\nEnjoy', style: TextStyle(fontSize: 40, 
               fontWeight: FontWeight.w600),),
             ),
             const SizedBox(height: 10), 
             const Padding(
               padding: EdgeInsets.only(left: 25.0),
               child: Text('sight beach, swim , drink and\neat delicious meal.', 
               style: TextStyle(fontSize: 20),),
             ),  
             const SizedBox(height: 80), 
              Padding(
               padding: const EdgeInsets.only(left: 25.0),
               child: Container(
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: (){},
                      child: const Text('Skip')), 
                      Container(
                           width: 50,
                           height: 50,
                           decoration: BoxDecoration(
                             color: const Color(0xFFD9D9D9),
                             
                               borderRadius: BorderRadius.circular(10),
                             
                             boxShadow: const [
                               BoxShadow(
                  color: Color(0x3F000000),
                  blurRadius: 4,
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                               )
                             ],
                           ),
                              child: const Icon(Icons.arrow_forward_ios), 
                         ),
                      
                 
                  ],
                 ),
               ),
              
             )
                  ],
            ),
          ), 
          
        ),
    ]; 
    return SafeArea(
      child: Scaffold(
        body: PageView(
          children: [
        
          ], 
        ),
      ),
    );
  }
}


