import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

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
          ShopAppBar(), 
          SliverToBoxAdapter(
            child: ShopInfo(),
          ), 
          SliverToBoxAdapter(
            child: Categories (
               onChanged: (value) {}, 
               selectedIndex: 0, 
               ), 
          )
        ],
      )
    );
  }
}
