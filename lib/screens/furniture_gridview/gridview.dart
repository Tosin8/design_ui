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
  badgeStyle: badges.BadgeStyle(
    badgeColor: Colors.black, 
  ),
  
  //backgroundColor: Colors.blue,
  child: IconButton(onPressed: (){}, 
  icon: const Icon(FontAwesomeIcons.basketShopping),
         ),
         
), 
SizedBox(width: 10), 
 ],
 
      ),

      body: const Text('Hello World')
    );
  }
}