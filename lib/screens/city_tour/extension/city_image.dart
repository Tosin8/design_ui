import 'package:flutter/material.dart';

class CityImage extends StatelessWidget {
  const CityImage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; 
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16), 
      height: size.height * 0.5, 
      width: size.width * 0.8, 
    );
  }
}