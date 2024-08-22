import 'package:flutter/material.dart';

class TravelHome extends StatefulWidget {
  const TravelHome({super.key});

  @override
  State<TravelHome> createState() => _TravelHomeState();
}

class _TravelHomeState extends State<TravelHome> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold( 
      body: PageView(
        children: [
          Container (
            color: Colors.blue,
          ), 
Container (
            color: Colors.green,
          ), Container (
            color: Colors.yellow,
          ), 
               ],
      )
    );
  }
}