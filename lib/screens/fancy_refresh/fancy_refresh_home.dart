import 'package:flutter/material.dart';

class FancyRefreshPage extends StatelessWidget {
  const FancyRefreshPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: ListView(
        children: [
          Padding(padding: 
            const EdgeInsets.all(20), 
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20), 
              child: Container( 
                height: 300, color: Colors.deepPurple,
              ),
            ),), 
             Padding(padding: 
            const EdgeInsets.all(20), 
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20), 
              child: Container( 
                height: 300, color: Colors.deepPurple,
              ),
            ),), 
             Padding(padding: 
            const EdgeInsets.all(20), 
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20), 
              child: Container( 
                height: 300, color: Colors.deepPurple,
              ),
            ),)
        ],
      )
    );
  }
}