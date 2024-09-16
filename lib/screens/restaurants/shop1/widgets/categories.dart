import 'package:flutter/material.dart';
import 'package:ui_design/screens/restaurants/shop1/model/shop_model.dart';


class ShopCategories extends SliverPersistentHeaderDelegate{
  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    // TODO: implement build
    throw UnimplementedError();
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => throw UnimplementedError();

  @override
  // TODO: implement minExtent
  double get minExtent => throw UnimplementedError();

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    throw UnimplementedError();
  }
  
}

class Categories extends StatefulWidget {
  const Categories({super.key, required this.onChanged, required this.selectedIndex});

  final ValueChanged<int> onChanged;
  final int selectedIndex;

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView( 
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          demoCategoriesMenus.length, 
          (index) =>   Padding(padding: const EdgeInsets.only(left: 8), 
          child: TextButton(onPressed: (){},
          style: TextButton.styleFrom(foregroundColor: widget.selectedIndex == index ? Colors.black : Colors.black26),
           child: Text(demoCategoriesMenus[index].category, style: const TextStyle(fontSize: 20),))
          )),
      )
    );
  }
}