import 'package:flutter/material.dart';
import 'package:ui_design/screens/restaurants/shop1/model/shop_model.dart';

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