import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        title: Text('Secondary Screen'),
      ),
      body: Center(child: Text('The Secondary Screen'),),
    );
  }
}