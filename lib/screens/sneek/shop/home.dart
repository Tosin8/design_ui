import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SneekHome extends StatelessWidget {
  const SneekHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sneek'), 
        centerTitle: true,
      )
    );
  }
}