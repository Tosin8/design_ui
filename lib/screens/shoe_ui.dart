import 'package:flutter/material.dart';

class ShoeUI extends StatefulWidget {
  const ShoeUI({super.key});

  @override
  State<ShoeUI> createState() => _ShoeUIState();
}

class _ShoeUIState extends State<ShoeUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/shoe_ui/8.jpg'),
            fit: BoxFit.cover,
          ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                decoration: BoxDecoration(
                  
                 ), 
                 child: Text('Shop Now'),
                ),
            ],
          ),
          ),
      );
    
  }
}