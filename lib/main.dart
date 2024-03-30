import 'package:flutter/material.dart';

import 'screens/discover_ui/discover.dart';
import 'screens/furniture_app/home/home.dart';
import 'screens/furniture_gridview/gridview.dart';
import 'screens/furniture_ui/onboarding.dart';
import 'screens/shoe_app/home.dart';
import 'screens/shoe_app/shoe_ui.dart';




void main() async {
  runApp( const MyApp()); 
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
    home: const FurnitureHome (), 

    ); 
  }
}

