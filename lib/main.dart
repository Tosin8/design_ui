import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_design/screens/minimal_shop/screens/shop.dart';
import 'package:ui_design/screens/minimal_shop/screens/splash.dart';





void main() async {
  runApp( const MyApp()); 
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
    home: const MinimalSplash (), 

    ); 
  }
}

