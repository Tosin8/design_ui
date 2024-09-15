import 'package:flutter/material.dart';

class Shop1 extends StatefulWidget {
  const Shop1({super.key});

  @override
  State<Shop1> createState() => _Shop1State();
}

class _Shop1State extends State<Shop1> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold( 
      body: CustomScrollView(
        slivers: [],
      )
    );
  }
}