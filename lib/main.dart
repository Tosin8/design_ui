import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_design/screens/custom_paint.dart';

import 'screens/furniture_app/splash.dart';
import 'screens/travel_onboard/swipe_home.dart'; 

void main() {
  runApp( MyApp()); 
}


// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp( debugShowCheckedModeBanner: false, 
//     title: 'Flutter Demo',
//     theme: ThemeData(
//       primarySwatch: Colors.blue,
//     ),
//     home: const HelloP(), 

//     ); 
//   }
// }

class MyApp extends StatelessWidget {
  var count = 0.obs; 
  //const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Counter')
      ),
      body: Center(
        child: Obx(() => Text('$count')),
      ), 
      floatingActionButton: FloatingActionButton(onPressed: ()=> count ++, child: Icon(Icons.add),),
    );
  }
}