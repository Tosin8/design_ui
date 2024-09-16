import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView( 
      child: Row(
        children: List.generate(
          demoCategoriesMenus.length, 
          (index) =>  const Padding(padding: EdgeInsets.only(left: 8))),
      )
    );
  }
}