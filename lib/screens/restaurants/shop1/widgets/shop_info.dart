
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ShopInfo extends StatelessWidget {
  const ShopInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child:   Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('SubWay Restuarant', 
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),), 
          const SizedBox(height: 4,), 
          const Text('Local Dish, American and Chinese Food', 
          style: TextStyle(
            color: Colors.grey, 
          fontSize: 14, 
          fontWeight: FontWeight.w500),), 
          const SizedBox(height: 4,),
          const Row(
            children: [
               Icon(Icons.star, color: Colors.green,),
              Text('4.2',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),), 
              SizedBox(width: 10,), 
             
              Text('120+ Reviews, 200+ Orders', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),),
              SizedBox(height: 10,), 
            ]       
          ), 
          const SizedBox(height: 10,)
    ,                    Row(
      children: [
        TitleLower(
          icon: Iconsax.coin,  
           subtitle: 'Delivery',
            title: 'Free' ),
            const SizedBox(width: 30,), 
             TitleLower(
      icon: Iconsax.clock,  
       subtitle: 'Minutes',
        title: '25' ),
      ],
    ),
        
    
            
        ],
                    ),
      ),);
  }
}

class TitleLower extends StatelessWidget {
  TitleLower({
    required this.icon, required this.subtitle, required this.title, 
    super.key,
  });

String title; 
String subtitle; 
IconData? icon; 
  @override
  Widget build(BuildContext context) {
    return  Row(
                            children: [
                              // Free delivery 
                              Row(
                                children: [
                                  Icon(icon,  color: Colors.green,),
                                  const SizedBox(width: 10,), 
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                                      Text(subtitle, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          );
  }
}