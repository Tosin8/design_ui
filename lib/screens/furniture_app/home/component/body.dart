import 'package:flutter/material.dart';
import 'package:ui_design/screens/furniture_app/constants.dart';
import 'package:ui_design/screens/furniture_app/model/cateogory.dart';
import 'package:ui_design/screens/furniture_app/services/fetch_categories.dart';

import 'category_card.dart';
import 'titleText.dart';

class FurnitureBody extends StatelessWidget {
  const FurnitureBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const titleText(name: 'Browse by Categories',), 
          const SizedBox(height: 20), 
          FutureBuilder(
            future: fetchCategories(),
            builder: (context, snapshot) => snapshot.hasData? Categories(
              categories: snapshot.data as List<Category>,
            ) :  Center(child: Image.asset('assets/furniture/icons/ripple.gif')),
          )
        
   ]  ) ); 
    
  }
}

class Categories extends StatelessWidget {
  const Categories({
    super.key, required this.categories,
  });

final List<Category> categories; 
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(categories.length, (index) => CategoryCard(category: categories[index]))
      ),
            );
  }
}

