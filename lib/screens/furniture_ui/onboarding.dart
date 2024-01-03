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

late final AnimationController _controller = AnimationController (vsync: this, 
duration: Duration(seconds: 20), 
); 

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: PageView.builder(
        onPageChanged: (int index) {
          
        },
        itemBuilder: (context, index) {
          return Container(
child: Stack (
  children: [
    Container(
      height: MediaQuery.of(context).size.height, 
      width: MediaQuery.of(context).size.height,
      clipBehavior: Clip.hardEdge, 
      decoration: BoxDecoration(
      
      ),
      child: ScaleTransition(scale: scale),
    )
  ],)
          ); 
        })
    );
  }
}