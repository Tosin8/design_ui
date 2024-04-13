import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../detail_screen/product_detail.dart';
import 'product.dart';

class productcard extends StatelessWidget {
  const productcard({
    super.key, required this.products, required this.press
  });

final Product products; 
final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:() {
        press; 
        // Navigator.push(context, MaterialPageRoute(builder: (context) => const ProductDetails()));
      },
      child: Hero(
        tag: products.image,
        child: Card(
          elevation: 0, 
          color: Colors.transparent, 
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), 
              image: DecorationImage(image: AssetImage(products.image), 
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
                 
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: AutoSizeText(
                       products.title,
                    softWrap: true,
                    maxLines: 2,
                     overflow: TextOverflow.ellipsis,
                     style: const TextStyle(color: Colors.white,fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                  ), 
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('\$${products.price.toString()}', style: const TextStyle(color: Colors.white),
                        ),
                         Container(
                   child: IconButton(icon: const Icon(Iconsax.heart, color: Colors.white,),
                     onPressed: () {
                        
                     },),), 
                      ],
                    )), 
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


 // Transform.translate(
                  //   offset: const Offset(120, -40), 
                  //   child: Container(
                  //     child: IconButton(icon: const Icon(Iconsax.heart, color: Colors.white,),
                  //     onPressed: () {
                        
                  //     },),
                    
                  //   ),
                  // ), 