import 'package:animate_do/animate_do.dart';
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
      'sub_title': 'Choose from thousands\nof items that fits your choice', 
      'image': 'assets/furniture_onboard/1.jpg', 
    }, 

    {
      'title': 'Modern \nFurnitures', 
      'sub_title': 'Choose from thousands\nof items that fits your choice', 
      'image': 'assets/furniture_onboard/2.jpg', 
    }, 
    {
      'title': 'Modern \nFurnitures', 
      'sub_title': 'Choose from thousands\nof items that fits your choice', 
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

        itemCount: _furnitures.length,
        controller: PageController(viewportFraction: 1.0),
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
    Positioned(
      bottom: 0, 

      child: Container(
        padding: const EdgeInsets.all(20), 
        width: MediaQuery.of(context).size.width, 
        height: MediaQuery.of(context).size.height, 
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight, 
            colors: [
              Colors.black.withOpacity(0.9), 
              Colors.black.withOpacity(0.8), 
              Colors.black.withOpacity(0.2), 
              Colors.black.withOpacity(0.1), 
            ])
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FadeInDown(
              duration: const Duration(milliseconds: 500),
              child: Text(_furnitures[index]['title'], 
              style: const TextStyle(
                color: Colors.white ,
                fontSize: 42, 
                fontWeight: FontWeight.bold),
                ),
            ),
            const SizedBox(height: 10), 
            FadeInLeft(
              delay: const Duration(milliseconds: 100), 
              duration: const Duration(milliseconds: 800),
              child: Text(_furnitures[index]['sub_title'], 
              style: TextStyle(color: Colors.grey.shade400, fontSize: 18),),
            ), 
            const SizedBox(height: 50), 
            FadeInRight(
              delay: const Duration(milliseconds: 100), 
              duration: const Duration(milliseconds: 1000),
              child: Align(
                alignment: Alignment.bottomRight, 
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)
                  ), 
                  
                  onPressed: (){}, 
                  color: Colors.orange, 
                  padding: const EdgeInsets.only(right: 5, left: 30, top: 5, bottom: 5), child: Container(height: 40, width: MediaQuery.of(context).size.width * 0.4, 
                  child: Row(
                    children: [
                      const Text('Get Started', 
                      style: TextStyle(color: Colors.black, fontSize: 16, 
                      ),), 
                      const Spacer(), 
                      Container(
                        padding: const EdgeInsets.all(8), 
                        decoration: BoxDecoration(color: Colors.orange.shade300, borderRadius: BorderRadius.circular(40)),child: Icon(Icons.arrow_forward_ios, color: Colors.orange.shade100,),
                      )
                    ],
                  ),),),
              )), 
              const SizedBox(height: 20,)
          ],
        ),
      ))
  ],)
          ); 
        })
    );
  }
}