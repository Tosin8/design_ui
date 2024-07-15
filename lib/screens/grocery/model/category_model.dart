import 'package:flutter/material.dart';
import 'package:ui_design/screens/grocery/veggie_home.dart';

class Category {
  final String title;
  final String image;
  final VoidCallback onTap;

  Category({required this.onTap, required this.title, required this.image});
}

List<Category> getCategories(BuildContext context) {
  return [
    Category(title: 'Beef', image: 'assets/grocery/category/beef.jpg', onTap: () {}),
    Category(title: 'Bakery', image: 'assets/grocery/category/bread.jpg', onTap: () {}),
    Category(title: 'Coffee & Tea', image: 'assets/grocery/category/coffee.jpg', onTap: () {}),
    Category(title: 'Dairy & Eggs', image: 'assets/grocery/category/egg.jpg', onTap: () {}),
    Category(title: 'Juice & Drinks', image: 'assets/grocery/category/juice.jpg', onTap: () {}),
    Category(title: 'Fruits & Veggies', image: 'assets/grocery/category/veggie.jpg', onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) =>  VeggieHome()));
    }),
    Category(title: 'Cereals', image: 'assets/grocery/category/cereal.jpg', onTap: () {}),
    Category(title: 'Snacks', image: 'assets/grocery/category/snacks.jpg', onTap: () {}),
  ];
}
