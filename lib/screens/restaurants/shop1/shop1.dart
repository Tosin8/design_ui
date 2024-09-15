import 'package:flutter/material.dart';

class Shop1 extends StatefulWidget {
  const Shop1({super.key});

  @override
  State<Shop1> createState() => _Shop1State();
}

class _Shop1State extends State<Shop1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200, 
            flexibleSpace: FlexibleSpaceBar(
               background: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/food/all/17.jpg'
                    
                    ),
                    fit: BoxFit.cover, 
                ),
                
              ),
              foregroundDecoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black, 
                    Colors.black.withOpacity(0.6), 
                  ]
                  
                  )
              ),
               ),),
          )
        ],
      )
    );
  }
}