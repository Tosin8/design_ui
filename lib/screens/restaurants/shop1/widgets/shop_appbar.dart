

import 'package:flutter/material.dart';

class ShopAppBar extends StatelessWidget {
  const ShopAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 200, 
      backgroundColor: Colors.white, elevation: 0,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
         background: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/food/brand_company/subway.png'
              
              ),
              fit: BoxFit.cover, 
          ),
          
        ),
        foregroundDecoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.black.withOpacity(0.4), 
              Colors.black.withOpacity(0.6), 
            ], 
            begin: Alignment.centerLeft, 
            end: Alignment.topRight, 
            )
        ),
         ),),
         leading: Padding(padding: const EdgeInsets.only(left: 16), 
         child: CircleAvatar( backgroundColor: Colors.white, 
         child: IconButton(
          onPressed: () {
            Navigator.pop(context); 
          }, 
         icon: const Icon(Icons.arrow_back), color: Colors.black,),)
         ), 
        
        centerTitle: true,
        actions: const [
          Padding(padding: EdgeInsets.only(right: 16), 
         child: CircleAvatar( backgroundColor: Colors.white, 
         child: Icon(Icons.shopping_bag, color: Colors.black,),)
         ),
         Padding(
           padding: EdgeInsets.only(right: 16.0),
           child: CircleAvatar(backgroundColor: Colors.white, child: Icon(Icons.search, ),),
         )
        ],
    );
  }
}