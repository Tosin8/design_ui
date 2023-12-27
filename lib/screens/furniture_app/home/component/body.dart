import 'package:flutter/material.dart';
import 'package:ui_design/screens/furniture_app/constants.dart';
import 'package:ui_design/screens/furniture_app/model/cateogory.dart';

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
          titleText(name: 'Browse by Categories',), 
          SizedBox(height: 20), 
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CategoryCard(category: category,),
                CategoryCard(category: category,),
              ],
            ),
        )
        
   ]  ) ); 
    
  }
}

