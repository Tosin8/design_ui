import 'package:flutter/material.dart';

import 'screens/discover_ui/discover.dart';
import 'screens/furniture_gridview/gridview.dart';
import 'screens/furniture_ui/onboarding.dart';




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
    home: const Discover (), 

    ); 
  }
}

