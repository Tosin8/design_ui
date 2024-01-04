import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class FurnitureGrid extends StatefulWidget {
  const FurnitureGrid({super.key});

  @override
  State<FurnitureGrid> createState() => _FurnitureGridState();
}

class _FurnitureGridState extends State<FurnitureGrid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        leading: const Icon(Icons.menu), 
        title: const Text('Furniture'),
        centerTitle: true,
        actions: [
badges.Badge(
  badgeContent: const Text('0', style: TextStyle(color: Colors.white),), 
  position: badges.BadgePosition.topEnd(top: -5, end: -4 ),
  badgeStyle: const badges.BadgeStyle(
    badgeColor: Colors.black, 
  ),
  
  //backgroundColor: Colors.blue,
  child: IconButton(onPressed: (){}, 
  icon: const Icon(FontAwesomeIcons.basketShopping),
         ),
         
), 
const SizedBox(width: 10), 
 ],
 
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0), 
        child: Column(
          children: [
            Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                
                image: const DecorationImage(image: AssetImage('assets/furniture_grid/9.jpg',), fit: BoxFit.cover 
              
              )),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(colors: [
                    Colors.black.withOpacity(.4), 
                    Colors.black.withOpacity(.1),
                     
                  ], begin: Alignment.bottomCenter)
                ),
                child:  Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text('Lifestyle Sales', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 30),
                    ), 
                    const SizedBox(height: 20), 
                    Container(
                      height: 50,
                      margin: const EdgeInsets.symmetric(horizontal: 50),
                      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                    ), 
                    const SizedBox(height: 20), 

                  ],
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}