import 'package:flutter/material.dart';
import 'package:ui_design/screens/hommy/models/categories.dart';

class categoryCard extends StatelessWidget {
  const categoryCard({
    super.key, required this.categories,
  });

  final Category categories; 

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
     
        child: AspectRatio(
          aspectRatio: 0.83,
          child: Stack(
            fit: StackFit.loose, 
            clipBehavior: Clip.none,
            children: [
            
              Container(
                height: 160, width: 180,
                decoration:  BoxDecoration(
                  //color:  kSecondaryColor, 
                  color: Colors.grey.withOpacity(0.09), 
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(45), 
                topRight: Radius.circular(30),
                bottomRight: Radius.circular(60),
                bottomLeft: Radius.circular(10),   
                ), 
                ), 
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                     Text(categories.title, 
                     style: const TextStyle(fontWeight: FontWeight.w500, ),), 
                  const SizedBox(height: 6,), 
                  Text(
                    '${categories.numOfProducts}+ Products', 
                    style: TextStyle(fontWeight: FontWeight.w400, color: Colors.black.withOpacity(0.3)),
                  ), 
                  const SizedBox(height: 20,),
                  ],
                ),
              ), 
              
                  Positioned( 
                    top: -50, 
                    left: -80, 
                    right: -60, 
                
                    child: Container(
                      height: 150, width: 300, 
                      child: Image.asset(categories.image)),
                  ), 
                 //  const SizedBox(height: 2,), 
                 
                
              
            ],
          ),
        ),
      );
  }
}

