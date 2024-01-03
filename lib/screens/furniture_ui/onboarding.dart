import 'package:flutter/material.dart';

class FurnitureOnboarding extends StatefulWidget {
  const FurnitureOnboarding({super.key});

  @override
  State<FurnitureOnboarding> createState() => _FurnitureOnboardingState();
}

class _FurnitureOnboardingState extends State<FurnitureOnboarding> with SingleTickerProviderStateMixin{

  final List<dynamic> _furnitures = [

    {
      'title': 'Modern \nFurnitures', 
      'sub_title': 'Choose from thousands of items that fits your choice', 
      'image': 'assets/furniture_onboard/1.jpg', 
    }, 

    {
      'title': 'Modern \nFurnitures', 
      'sub_title': 'Choose from thousands of items that fits your choice', 
      'image': 'assets/furniture_onboard/2.jpg', 
    }, 
    {
      'title': 'Modern \nFurnitures', 
      'sub_title': 'Choose from thousands of items that fits your choice', 
      'image': 'assets/furniture_onboard/3.jpg', 
    }
  ]; 
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}