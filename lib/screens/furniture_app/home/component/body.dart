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
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          titleText(name: 'Browse by Categories',), 
          SizedBox(height: 20), 
          FutureBuilder(
            future: fetchCategories(),
            builder: (context, snapshot) => snapshot.hasData? Categories() : CircularProgressIndicator(),
          )
        
   ]  ) ); 
    
  }
}

class Categories extends StatelessWidget {
  const Categories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CategoryCard(category: category,),
          CategoryCard(category: category,),
        ],
      ),
            );
  }
}

