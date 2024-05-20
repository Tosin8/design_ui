import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:ui_design/screens/hommy/splash_screen.dart';
import 'package:ui_design/screens/minimal_shop/model/shop.dart';

import 'package:ui_design/screens/minimal_shop/screens/splash.dart';



// USING GETX STATE MANAGEMENT. 

// void main() async {
//   runApp( const MyApp()); 
// }


// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp( debugShowCheckedModeBanner: false, 
//     title: 'Flutter Demo',
//     theme: ThemeData(
//       primarySwatch: Colors.blue,
//     ),
//     home: const MinimalSplash (), 

//     ); 
//   }
// }

// USING PROVIDER STATE MANAGEMENT. 

void main()  {
  runApp( 
    ChangeNotifierProvider( 
      create: (context) => Shop(),
   child:  const MyApp())); 
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp( debugShowCheckedModeBanner: false, 
    title: 'Flutter Demo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: const Hommy(), 

    ); 
  }
}