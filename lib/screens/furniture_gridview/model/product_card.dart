import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../detail_screen/product_detail.dart';
import 'product.dart';

class productcard extends StatelessWidget {
  const productcard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:() {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const ProductDetails()));
      },
      child: Hero(
        tag: products[0].image,
        child: Card(
          elevation: 0, 
          color: Colors.transparent, 
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), 
              image: DecorationImage(image: AssetImage(products[0].image), 
              fit: BoxFit.cover
              )
            ),
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), 
              gradient: LinearGradient(colors: [
                Colors.black.withOpacity(.4),
                Colors.black.withOpacity(.1), 
              ], 
              begin: Alignment.bottomRight
              ), 
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Transform.translate(
                    offset: const Offset(120, -40), 
                    child: Container(
                      child: IconButton(icon: const Icon(Iconsax.heart, color: Colors.white,),
                      onPressed: () {
                        
                      },),
                    
                    ),
                  ), 
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text( products[0].title, style: const TextStyle(color: Colors.white,fontWeight: FontWeight.w600, fontSize: 14),
                    ),
                  ), 
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text('\$${products[0].price.toString()}', style: const TextStyle(color: Colors.white),)), 
                  const SizedBox(height: 10,), 
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}