import 'package:flutter/material.dart';

class DatingHome extends StatelessWidget {
  const DatingHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      appBar: AppBar(
        
        backgroundColor: Colors.pink,
        title: const Text('Dating App'),
      ),
      body: Center(
        child: Text('Hello')
        ); 
    );
  }
}
