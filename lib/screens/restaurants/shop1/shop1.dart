import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
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
        SliverList(
            delegate: SliverChildBuilderDelegate(
(context, categoryIndex) {
  List<Menu> items = demoCategoriesMenus[categoryIndex].items;
return MenuCategoryItem(
  title: demoCategoriesMenus[categoryIndex].category,
  items: List.generate(items.length,
   (index) => Padding(padding: const EdgeInsets.only(bottom: 20), 
   child: MenuCard( 
    title: items[index].title, 
    image: items[index].image,
     price: items[index].price, 
     ), )
     ),
  
   );

    }  , 
    childCount: demoCategoriesMenus.length, 
    ))
        ],
      )
    );
  }
}
