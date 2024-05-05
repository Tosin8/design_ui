import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_design/screens/coffee_shop/screen/splash.dart';
import 'package:ui_design/screens/sneek/shop/home.dart';

import 'screens/furniture_gridview/gridview.dart';




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
    home: const CoffeeSplash(), 

    ); 
  }
}

