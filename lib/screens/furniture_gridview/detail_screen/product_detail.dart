import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:readmore/readmore.dart';
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
                  Hero(
                      tag: 'products[0].image',
                      child: Container(
                        height: 400,
                        child: Image.asset(products[0].image,  fit: BoxFit.cover,),
                      ),
                    
                  ), 
                  const SizedBox(height: 20),
                  Padding( 
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(products[0].title,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                         style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                        ), 
                        Text('\$${products[0].price.toString()}', style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 18),)
                      ],
                    ),
                  ), 
                  const SizedBox(height: 10,), 
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ReadMoreText(
                      products[0].description, 
                      trimLength:3, 
                      trimMode: TrimMode.Line,
                      colorClickableText: Colors.blue,
  trimCollapsedText: 'Show more',
  trimExpandedText: 'Show less',
  moreStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.blue),
  lessStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.blue),
                      style: TextStyle(color: Colors.grey.shade500),),
                  ),
                ],
              ),
            ),
         
         
    ]));
  }
}