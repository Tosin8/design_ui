import 'package:flutter/material.dart';
import 'package:ui_design/screens/animated_form/home_form.dart';
import 'package:ui_design/screens/furniture_gridview/gridview.dart';
import 'package:ui_design/screens/furniture_ui/onboarding.dart';

import 'screens/discover_ui/discover.dart';
import 'screens/shoe_app/shoe_ui.dart';



void main() {
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
    home: const Home_Form(), 

    ); 
  }
}

