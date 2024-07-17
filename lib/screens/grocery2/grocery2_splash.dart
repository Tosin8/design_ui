import 'package:flutter/material.dart';

class Grocery2Splash extends StatelessWidget {
  const Grocery2Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold( 
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/grocery2/splash_main.jpg'), fit: BoxFit.cover),
          ),
          foregroundDecoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black38, Colors.transparent,Colors.transparent], 
              
              begin: Alignment.bottomCenter, end: Alignment.topRight)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  // title
                  const Text('Right Taste', style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.w500),),

                  // subtitle 
                  const Text('The Right Taste for Every Belly', style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w400),),

                  const SizedBox(height: 100,),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 50, width: 200,
                      decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(10)),
                      child: const Align(child: Text('Get Started', style: TextStyle(color: Colors.white, fontSize: 18),)),
                    ),
                  )
                ],
              ),
        )
      ),
    );
  }
}