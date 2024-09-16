import 'package:flutter/material.dart';
import 'package:ui_design/screens/restaurants/shop1/model/shop_model.dart';

import 'widgets/categories.dart';
import 'widgets/shop_appbar.dart';
import 'widgets/shop_info.dart';

class Shop1 extends StatefulWidget {
  const Shop1({super.key});

  @override
  State<Shop1> createState() => _Shop1State();
}

class _Shop1State extends State<Shop1> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold( 
      body: CustomScrollView(
        slivers: [
          const ShopAppBar(), 
          const SliverToBoxAdapter(
            child: ShopInfo(),
          ), 
          SliverToBoxAdapter(
            child: Categories (
               onChanged: (value) {}, 
               selectedIndex: 0, 
               ), 
          ), 
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 16), 
          sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
          (context, categoryIndex) {
            List<Menu> items = demoCategoriesMenus[categoryIndex].items;
          return MenuCategoryItem(
            title: demoCategoriesMenus[categoryIndex].category,
            items: List.generate(items.length,
             (index) => Padding(padding: const EdgeInsets.only(bottom: 16), 
             child: MenuCard( 
              title: items[index].title, 
              image: items[index].image,
               price: items[index].price, 
               description: items[index].description
               ), )
               ),
            
             );
          
              }  , 
              childCount: demoCategoriesMenus.length, 
              )),
        )
        ],
      )
    );
  }
}

class MenuCard extends StatelessWidget {
   MenuCard({super.key, required this.title, required this.price, required this.image, required this.description});

String title; 
double price; 
String image; 
String description; 
  @override
  Widget build(BuildContext context) {
    return Container(
      child:  Row(
        children: [
          Container( 
            decoration: BoxDecoration( 
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
            ),
            width: 100, height: 100,
          
            ),
            const SizedBox(width: 10,), 
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),), 
              SizedBox(
                width: 250 ,
                child: Text(description, maxLines: 2,softWrap: true,overflow: TextOverflow.ellipsis,)),
              const SizedBox(height: 5,), 
              Text('\$$price', style: const TextStyle(color: Colors.green, fontSize: 16, fontWeight: FontWeight.bold),),
            ],
          )
        ],
      ),
    );
  }
}



class MenuCategoryItem extends StatelessWidget {
  // Constructor with required parameters
  const MenuCategoryItem({super.key, required this.title, required this.items});

  // Fields
  final String title; // Use 'final' to indicate immutability
  final List<Padding> items; // Ensure the list is final and initialized

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0), // Optional padding
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Align text to start
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold), // Optional styling
          ),
          const SizedBox(height: 10), // Space between title and items
          Column(
        
            children: items, // Pass the list of Padding widgets
          ),
        ],
      ),
    );
  }
}
