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

  final List<String> _listItem =[
    'assets/furniture_grid/1.jpg', 
    'assets/furniture_grid/2.jpg', 
    'assets/furniture_grid/3.jpg', 
    'assets/furniture_grid/4.jpg', 
    'assets/furniture_grid/5.jpg', 
    'assets/furniture_grid/6.jpg', 
    'assets/furniture_grid/7.jpg', 
    'assets/furniture_grid/8.jpg', 
  ]; 
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
                    const SizedBox(height: 10), 
                    const Text('Elegant furnitures of varieties made to\n last longer at the differences of the making ', style: TextStyle(color: Colors.white), 
                    textAlign: TextAlign.center,), 
                    const SizedBox(height: 20), 
                    Container(

                      height: 50,
                      margin: const EdgeInsets.symmetric(horizontal: 50),
                      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                      child: Center(child: Text('Shop Here', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.grey[700]),)),
                    ), 
                    const SizedBox(height: 35), 

                  ],
                ),
              ),
            ),
            Expanded(child: 
            GridView.count(crossAxisCount: 2, padding: EdgeInsets.all(20), crossAxisSpacing: 20, mainAxisSpacing: 20,))
          ],
        ),
      )
    );
  }
}