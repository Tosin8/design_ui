// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'model/product_model.dart';

class Grocery2Home extends StatelessWidget {
  const Grocery2Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: Colors.black,
      appBar: AppBar(
         backgroundColor: Colors.black,
        leading: IconButton(onPressed: (){}, icon: const Icon(Iconsax.menu5, color: Colors.white,), 
        ),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Iconsax.notification, color: Colors.white,), 
          ),
          IconButton(onPressed: (){}, icon: const Icon(Iconsax.user, color: Colors.white,), 
          ),
        ],
        ),
      body: const Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Good food\nFast Delivery',
            style: TextStyle(color: Colors.white, fontSize: 30),), SizedBox(height: 20,), 
            SingleChildScrollView( 
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CategoryTitle(title: 'All', active: true,), 
                     CategoryTitle(title: 'Chicken', ) , 
                      CategoryTitle(title: 'Burgers', ) ,
                        CategoryTitle(title: 'Salad', ) ,
                          CategoryTitle(title: 'Fruits', )  ,
                           CategoryTitle(title: 'Jollof rice', ), 
                ],
              ),
            ),
            SizedBox(height: 20,) , 
            Text('Popular Now', 
            style: TextStyle(color: Colors.white,
             fontSize: 20),), 
              SizedBox(height: 20,) , 

              // product card. 
              SingleChildScrollView( 
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    productCard(),
                    
                  ],
                ),
              ), 
              

          ],
        ),
      ),
    );
  
  }
}

class productCard extends StatelessWidget {

  final GroceryProduct groceryproducts; 
  const productCard({
    super.key, required this.groceryproducts,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector( 
      onTap: () {
        
      },
      child: Container(
        height: 400, width: 270,
        child: Stack(
          children: [
      
      // big light background
      Positioned(
        right: 0, 
        bottom: 0,
        child: Container(
          height: 380, width: 250, 
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(120), 
            bottomLeft: Radius.circular(30), 
            bottomRight: Radius.circular(30), 
            topRight: Radius.circular(120)), 
            color: Colors.white.withOpacity(0.9), 
          ),
           child:  Padding(
             padding: const EdgeInsets.all(12.0),
             child: Column(
              
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
      const SizedBox(height: 180,),
      Text(groceryproducts.name, 
      style: const TextStyle(color: Colors.black, fontSize: 18),), 
      
      const SizedBox(height: 10,), 
       Text(groceryproducts.description, style: const TextStyle(color: Colors.grey, fontSize: 15),
      softWrap: true, 
      overflow: TextOverflow.ellipsis, 
      maxLines: 2,
      
      ), 
      const SizedBox(height: 15,) , 
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Text('\$${groceryproducts.price}', 
        style: const TextStyle(fontSize: 22, 
        color: Colors.black, 
        fontWeight: FontWeight.bold),
                  ),
                  Text(groceryproducts.weight, 
                  style: const TextStyle(fontSize: 15, color: Colors.black),), 
                  ])
                  ],
                ),
           ),
      
        )), 
      
        // forebackground
      
        
        Positioned( 
      top: -200, 
         left: -20, 
         right: -20,
         bottom: 20,
          child: Container(    
            height: 500, width:500,
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/grocery2/products/image_1.png'), ),),
             
           ),
        ), 
      
          ]
        ),
      ),
    );
  }
}

class CategoryTitle extends StatelessWidget {
  final String title; 
  final bool active; 
  const CategoryTitle({
    Key? key,
    required this.title,
 this.active = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Text(title,
      style: TextStyle(
        color: active ? Colors.white:  Colors.grey, fontSize: 20, fontWeight: FontWeight.bold),),
    );
  }
}
