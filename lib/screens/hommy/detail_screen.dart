import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: Colors.grey[100],
      body: Container(
        width: double.infinity,
        height: 630,
decoration: const BoxDecoration(
  borderRadius: BorderRadius.only(
    bottomLeft: Radius.circular(35), 
    bottomRight: Radius.circular(35), 
  ),
  image: DecorationImage(
    image: AssetImage('assets/furniture_grid/1.jpg'),
    fit: BoxFit.cover,
  ),
),
      ),
    );
  }
}