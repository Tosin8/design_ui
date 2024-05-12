import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MinimalCartScreen extends StatelessWidget {
  const MinimalCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text('Cart'),
      ),
    );
  }
}