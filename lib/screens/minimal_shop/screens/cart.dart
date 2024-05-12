import 'package:flutter/material.dart';

import '../components/app_drawer.dart';

class MinimalCartScreen extends StatelessWidget {
  const MinimalCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MinimalDrawer(),
      appBar: AppBar(
       title: const Text('Minimal Cart', style: TextStyle(color: Colors.black, fontSize: 16),), 
      centerTitle: true,
      ),
    );
  }
}