import 'package:flutter/material.dart';

class FurnitureSplash extends StatelessWidget {
  const FurnitureSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold( 
        body: ListView(
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
                child: Padding(
                  padding: EdgeInsets.only(top: 20, left: 180),
                  child: Text('KTEA', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500, ),
                  )),
              ),
            ), 
            Container(
              width: double.infinity,
              height: 330,
               
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
                  Text('Furniture your style \nwith teh most remarkable 24th century. ', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18))]),
            )
          ],
        ),
      ),
    );
  }
}