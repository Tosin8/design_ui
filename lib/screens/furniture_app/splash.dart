import 'package:flutter/material.dart';

class FurnitureSplash extends StatelessWidget {
  const FurnitureSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: Column(
        children: [
          Container(
            height: 450, width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/furniture/splash.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topRight,
                  colors: [
                    Colors.black.withOpacity(0.3),
                    Colors.black.withOpacity(0.0),
                  ],
                ),
              ),
            ),
          ), 
          Container(
            width: double.infinity,
             
               color: const Color(0xffCEC8BF),
           
            child: const Stack(
              fit: StackFit.loose,
              clipBehavior: Clip.none,

              children:[
                
                Positioned(
                  top: -70,left: 20,
                  child: Text(
                    'Elegant\nSimple\nFurnitures.',
                     style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),)), 
               Positioned(
                left: 20, top: 30, 
                child: Text('Furniture your style \nwith teh most remarkable 24th century. ', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18)))]),
          )
        ],
      ),
    );
  }
}