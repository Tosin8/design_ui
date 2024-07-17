import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Grocery2Home extends StatelessWidget {
  const Grocery2Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: Colors.black,
      appBar: AppBar(
         backgroundColor: Colors.black,
        leading: IconButton(onPressed: (){}, icon: Icon(Iconsax.menu5, color: Colors.white,)),
        ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Text('Good food\nFast Delivery',
            style: TextStyle(color: Colors.white, fontSize: 30),), SizedBox(height: 20,)
          ],
        ),
      ),
    );
  
  }
}