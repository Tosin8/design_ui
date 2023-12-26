import 'package:flutter/material.dart';

class FurnitureSplash extends StatelessWidget {
  const FurnitureSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/furniture.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}