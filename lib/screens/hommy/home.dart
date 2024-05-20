// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ui_design/screens/hommy/widgets/constants.dart';
import 'package:ui_design/screens/hommy/widgets/titleText.dart';



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
      body: Container(
        child:  SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 const titleText(
                  title: 'Browse by Categories',
                ),

                const SizedBox(height: 80,), 
                SizedBox(
                  width: 200,
                  child: AspectRatio(
                    aspectRatio: 1.0,
                    child: Stack(
                      children: [
                      
                        Container(
                          height: 160, width: 180,
                          decoration:  BoxDecoration(
                            //color:  kSecondaryColor, 
                            color: Colors.grey.withOpacity(0.09), 
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(45), 
                          topRight: Radius.circular(30),
                          bottomRight: Radius.circular(60),
                          bottomLeft: Radius.circular(10),   
                          ), 
                          ), 
                          child: const Column(
                            children: [
                               Text('Arm Chair', style: TextStyle(fontWeight: FontWeight.w500),), 
                            SizedBox(height: 10,), 
                            Text(
                              '100+ products'
                            )
                            ],
                          ),
                        ), 
                        Column(
                          children: [
                            Container(
                              height: 100, width: 300, 
                              child: Image.asset('assets/furniture_grid/categories/slide_chair.png')), 
                             const SizedBox(height: 10,), 
                           
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

