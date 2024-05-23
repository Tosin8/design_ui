import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: Colors.grey[100],
      body: Stack(
        children: [
          Container(
          width: double.infinity,
          height: 630,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(35), 
            bottomRight: Radius.circular(35), 
          ),
          image: DecorationImage(
            image: AssetImage('assets/furniture_grid/1.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        ),

        // Product Stack Widgets. 
        Column(
          children: [
            const SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back_ios, color: Colors.white,), 
                  ),
                  IconButton(
                    onPressed: (){},
                     icon: const Icon(Iconsax.heart, color: Colors.white,
                     ),), 
                ] 
              )), 

          ],
        )
     ] ),

    );
  }
}