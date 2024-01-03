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
duration: const Duration(seconds: 20), 
)..repeat(reverse: true);


late final Animation<double> _animation = Tween<double> (
  begin: 1.0,
   end: 1.5).animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn)); 

   @override
  void dispose() {
    
    super.dispose();
    _controller.dispose(); 

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: PageView.builder(
        onPageChanged: (int index) {
          _controller.value = 0.0; 
          _controller.forward(); 
        },
        itemBuilder: (context, index) {
          return Container(
child: Stack (
  children: [
    Container(
      height: MediaQuery.of(context).size.height, 
      width: MediaQuery.of(context).size.height,
      clipBehavior: Clip.hardEdge, 
      decoration: const BoxDecoration(
      
      ),
      child: ScaleTransition(scale: _animation, 
      child: Image.asset(_furnitures[index]['image'], 
      fit: BoxFit.cover, 
      ),),
    ), 
    Positioned(child: Container())
  ],)
          ); 
        })
    );
  }
}