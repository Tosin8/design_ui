// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ui_design/screens/hommy/models/categories.dart';
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

                // Browse by category. 

                SingleChildScrollView( 
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                                ...List.generate( 
                   categories.length,
                   (index) => 
                         categoryCard(categories: categories[index]),
                       
                     ),
                  ] ),
                ) , 

                //  Recommends for you. 
                const titleText(
                  title: 'Recommends for you',
                ),
                const SizedBox(height: 5,),
                GestureDetector( 
                  onTap: () {},
                  child: Container(
                    height: 300, width: 180,
                   
                    child:  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 200, width: 180,
                          decoration: BoxDecoration(image: const DecorationImage(image: AssetImage('assets/furniture_grid/1.jpg',), fit: BoxFit.cover), borderRadius: BorderRadius.circular(15)),
                        ), 
                        const SizedBox(height: 5,), 
                        const Text('White Sofa', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),), 
                        Text('\$700', 
                        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16, 
                        color: Colors.black.withOpacity(0.5)),
                        ), 
                      ], 
                    ),
                  ),
                )

              ]
                 ),


    
           ) )); 
  }
}

