import 'package:flutter/material.dart';

class CityStars extends StatelessWidget {

  final int stars; 
  const CityStars({super.key, required this.stars});

  @override
  Widget build(BuildContext context) {
    final allStars = List.generate(stars, (index) => index); 
    return Row( 
      children: allStars.map((star) => Container(
        margin: const EdgeInsets.only(right: 4), child: const Icon(Icons.star_rate, size: 18, color: Colors.blueGrey),
      ))
      .toList( ), 
    );
  }
}