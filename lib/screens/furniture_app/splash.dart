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
                child: const Padding(
                  padding: EdgeInsets.only(top: 20, left: 180),
                  child: Text('KTEA', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500, ),
                  )),
              ),
            ), 
            Container(
              width: double.infinity,
              height: 330,
               
                 color: const Color(0xffCEC8BF),
             
              child: Stack(
                //fit: StackFit.loose,
                clipBehavior: Clip.none,
      
                children:[
                  
                  Positioned(
                    top: -70,left: 20,
                    child: Text(
                      'Elegant\nSimple\nFurnitures.',
                       style: TextStyle(fontSize: 35, fontWeight: FontWeight.w500),)), 
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 100, horizontal: 80),
                    child: Text('Transform your home with \nthe best luxury furnitures. ', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),textAlign: TextAlign.center,), 
                    
                    ), 
                    Positioned( 
                      left: 150, 
                      bottom: 70,
                      child: Container(
                        width: 66, height: 66,
                        child: Image.asset('assets/furniture/icons/right-down.png')),
                    ),   Container(
          width: 108,
          height: 108,
          decoration: ShapeDecoration(
            color: Color(0xFF5B5452),
            shape: OvalBorder(),
            shadows: [
              BoxShadow(
                color: Color(0x3F000000),
                blurRadius: 4,
                offset: Offset(0, 4),
                spreadRadius: 0,
              )
            ],
          ),
     child: Text('START', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),),   ),


                    ]),
            )
          ],
        ),
      ),
    );
  }
}