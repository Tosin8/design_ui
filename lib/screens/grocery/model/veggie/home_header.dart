import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        
        elevation: 0, 
       automaticallyImplyLeading: false,
       bottom:  PreferredSize(
        preferredSize: const Size.fromHeight(30),
        child: Row(
          children: [
            IconButton(onPressed: (){
              Navigator.pop(context); 
            }, icon: const Icon(Icons.arrow_back_ios)), 
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text('FreshFetch', style: TextStyle(color: Colors.green, fontWeight: FontWeight.normal, fontSize: 16),), 
              Text('Fruit & Veggies',
               style: TextStyle(color: Colors.grey, fontSize: 18),
               )],
              ),
            const Spacer(),
            IconButton(onPressed: (){}, icon: const Icon(Iconsax.notification)), // replace it with the search button. 
          ],
        ),), 
    
      ), 
    );
  }
}