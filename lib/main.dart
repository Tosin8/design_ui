import 'package:flutter/material.dart';

import 'screens/city_tour/page/city_home.dart';
import 'screens/furniture_app/splash.dart'; 

void main() {
  runApp(const MyApp()); 
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( debugShowCheckedModeBanner: false, 
    title: 'Flutter Demo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: FurnitureSplash(), 

    ); 
  }
}