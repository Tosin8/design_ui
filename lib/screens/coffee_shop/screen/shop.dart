import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CoffeeShop extends StatelessWidget {
  const CoffeeShop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            
          },
          child: const Icon(Iconsax.message)),
          actions: const [
             CircleAvatar(
              radius: 15,
              backgroundImage: AssetImage('assets/coffee_shop/2.jpg'),
            ), 
            SizedBox(width: 10,), 
          ],
      ),
    );
  }
}