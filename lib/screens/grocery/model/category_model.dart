import 'package:flutter/material.dart';

class Category {
  final String title; 
  final String image;
  final VoidCallback onTap; 

  Category({required this.onTap, required this.title, required this.image}); 
}

final categories = [
  Category(title: 'Beaf', image: 'assets/grocery/category/beef.jpg', onTap: (){}),
  Category(title: 'Bakery', image: 'assets/grocery/category/bread.jpg', onTap: () {  }),
  Category(title: 'Coffee & Tea', image: 'assets/grocery/category/coffee.jpg', onTap: () {  }),
  Category(title: 'Dairy & Eggs', image: 'assets/grocery/category/egg.jpg', onTap: () {  }),
  Category(title: 'Juice & Drinks', image: 'assets/grocery/category/juice.jpg', onTap: () {  }),
  Category(title: 'Fruits & Veggies', image: 'assets/grocery/category/veggie.jpg', onTap: () {  }),
]; 