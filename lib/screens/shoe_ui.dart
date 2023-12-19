import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class ShoeUI extends StatefulWidget {
  const ShoeUI({super.key});

  @override
  State<ShoeUI> createState() => _ShoeUIState();
}

class _ShoeUIState extends State<ShoeUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: FadeIn(
        duration: const Duration(seconds: 5),
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/shoe_ui/8.jpg'),
              fit: BoxFit.cover,
            ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FadeInUp(
                  duration: const Duration(seconds: 8),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => ShoeHome()));
                    },
                    child: Container(
                      width: 200, height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blueAccent, 
                        boxShadow: [BoxShadow(color: Colors.white.withOpacity(0.8), spreadRadius: 1, blurRadius: 1,)]
                        
                       ), 
                       child: const Align(child: Text('Shop Now', 
                       style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),)),
                      ),
                  ),
                ),
                  const SizedBox(height: 60,)
              ],
            ),
            ),
      ),
      );
    
  }
}