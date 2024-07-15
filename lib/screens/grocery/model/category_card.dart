

import 'package:flutter/material.dart';

import 'category_model.dart';

class CategoryCard extends StatelessWidget {

final String title; 
final VoidCallback onTap;
final String image;
  final Category categories;
  const CategoryCard({
    super.key, required this.categories, required this.title, required this.image, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector( 
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 200, width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              
              image:  AssetImage(categories.image), fit: BoxFit.cover, 
              colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.2), BlendMode.darken),), 
          ),
          child:  Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(categories.title, style: const TextStyle(color: Colors.white, fontSize: 20),),
          ))
        ),
      );
  }
}