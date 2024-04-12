import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui_design/screens/furniture_gridview/model/product.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
            extendBodyBehindAppBar: true,
                   appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
              
            ), 
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite_outline, color: Colors.black),
              )
            ],
                   ),
                  
                 
    
    
    body: Stack(
      children: [
         Container(
              child: 
              Column(
                children: [
                  Expanded(
                    child: Hero(
                      tag: 'products[0].image',
                      child: Container(
                        child: Image.asset(products[0].image,  fit: BoxFit.cover,),
                      ),
                    )
                  )
                ],
              ),
            ),
         
         
    ]));
  }
}