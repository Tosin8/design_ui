// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ui_design/screens/hommy/models/categories.dart';
import 'package:ui_design/screens/hommy/widgets/constants.dart';
import 'package:ui_design/screens/hommy/widgets/titleText.dart';

import 'categorycard.dart';



class Hommy1 extends StatelessWidget {
  const Hommy1({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      

      appBar: AppBar(
      backgroundColor:  Colors.transparent,
        leading:  IconButton( 
         // iconSize: SizeConfig.defaultSize * 2,
        icon: 
          const Icon(Iconsax.menu,
          ), 
           onPressed: () {  }, ),
        actions: const [
          Icon(Iconsax.shopping_bag),
        SizedBox(width: 10),
        ],
      ),
      body: 
         SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 const titleText(
                  title: 'Browse by Categories',
                ),

                const SizedBox(height: 40,), 
                SingleChildScrollView( 
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                                ...List.generate( 
                   categories.length,
                   (index) => 
                         categoryCard(categories: categories[index]),
                       
                     ),
                  ] ),
                )  
              ]
                 ),


    
           ) )); 
  }
}

