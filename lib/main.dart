import 'package:flutter/material.dart';
import 'package:ui_design/screens/form/designed_form/design_form.dart';
import 'package:ui_design/screens/materia_io/container_transform/container_transform.dart';
import 'package:ui_design/screens/smatch_watch/smart.dart';




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
    home: const OpenContainerTransform(), 

    ); 
  }
}

