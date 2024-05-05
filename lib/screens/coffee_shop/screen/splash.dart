import 'package:flutter/material.dart';

class CoffeeSplash extends StatelessWidget {
  const CoffeeSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image:
          AssetImage(
            'assets/coffee_shop/1.jpg',
          ), fit: BoxFit.cover)), 
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black, 
                Colors.black.withOpacity(0.1), 
              ], 
              begin: Alignment.bottomCenter, 
            )
          ),
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              
              const Text('Get Started', 
              style: TextStyle(color: Color(0xffECFFDC),  fontSize: 18, ),), 
              const SizedBox(height: 20,), 
              const Text('Ready to serve you \nyour coffee', 
              style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold ),
              textAlign: TextAlign.center, ), 
              const SizedBox(height: 30,), 
              Container(
                height: 60, width: 260,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xffFFE5B4)
                ),
                child: const Align(child: Text('Enter Shop',
                style: TextStyle(fontSize: 16),)),
              ), 
              const SizedBox(height: 30,), 
            ],
          ),
        ),
          
        ),
      
    );
  }
}