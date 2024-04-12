import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'model/product.dart';
import 'model/product_card.dart';


class FurnitureGrid extends StatefulWidget {
  const FurnitureGrid({super.key});

  @override
  State<FurnitureGrid> createState() => _FurnitureGridState();
}

class _FurnitureGridState extends State<FurnitureGrid> {
  final List<String> _listItem =[
    'assets/furniture_grid/1.jpg', 
    'assets/furniture_grid/2.jpg', 
    'assets/furniture_grid/3.jpg', 
    'assets/furniture_grid/4.jpg', 
    'assets/furniture_grid/5.jpg', 
    'assets/furniture_grid/6.jpg', 
    'assets/furniture_grid/7.jpg', 
    'assets/furniture_grid/8.jpg', 
  ]; 
  bool _favs = false; 
   void _changeFavs(){
    setState(() {
      _favs = !_favs; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        leading: const Icon(Icons.menu), 
        title: const Text('Home Interior'),
        centerTitle: true,

 
      ),

      body: Container(
        padding: const EdgeInsets.all(8.0), 
        child: Column(
          children: [
            FadeIn(
              duration: const Duration(milliseconds: 1000),
              child: Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  
                  image: const DecorationImage(image: AssetImage('assets/furniture_grid/9.jpg',), fit: BoxFit.cover 
                
                )),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(colors: [
                      Colors.black.withOpacity(.4), 
                      Colors.black.withOpacity(.1),
                       
                    ], 
                    begin: Alignment.bottomCenter)
                  ),
                  child:  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(
                        'Lifestyle Sales', 
                        style: TextStyle(color: Colors.white, 
                        fontWeight: FontWeight.w600, fontSize: 30),
                      ), 
                      const SizedBox(height: 10), 
                      const Text('Elegant furnitures of varieties made to\n last longer at the differences of the making ', style: TextStyle(color: Colors.white), 
                      textAlign: TextAlign.center,), 
                      const SizedBox(height: 15), 
                      Container(
              
                        height: 50,
                        margin: const EdgeInsets.symmetric(horizontal: 50),
                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                        child: Center(child: Text('Shop Here', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.grey[700]),)),
                      ), 
                      const SizedBox(height: 18), 
              
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 5), 
            Expanded(child: 
            FadeInLeft(
              delay: const Duration(milliseconds: 1000),
              duration: const Duration(milliseconds: 1000),
              // child: GridView.count(
              //   crossAxisCount: 2,
              //    padding: const EdgeInsets.all(8), crossAxisSpacing: 20,
              //     mainAxisSpacing: 20,
              child:   SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: GridView.builder(
                           physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 6.0,
                  ),
                        
                          itemCount: products.length,
                          itemBuilder: (_, index){
                            return productcard(
                products: products[index],
                            );
                          }
                        ),
              )),
      ), 
                //  children: _listItem.map((item) => Card(
                //   elevation: 0, 
                //   color: Colors.transparent,
                //   child: Container(
                //     decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(10),
                //       image: DecorationImage(
                //         image: AssetImage(item), 
                //         fit: BoxFit.cover
                //         )
                //     ),
                //     child: Container(
                //       decoration: BoxDecoration(
                //         borderRadius: BorderRadius.circular(10),
                //         gradient: LinearGradient(colors: [
                //           Colors.black.withOpacity(.4), 
                //           Colors.black.withOpacity(.1), 
              
                //         ], begin: Alignment.bottomRight)
                //       ), 
                //       child: Transform.translate(
                //         offset: const Offset(60, -50),
                //         child: Container(
                //           child: IconButton(
                            
                //             onPressed: _changeFavs, 
                //             icon: _favs ? 
                //             const Icon(Icons.favorite_border_outlined, color: Colors.white) : const Icon(Icons.favorite, color: Colors.black,
                //             )
                //             ),
                //         ),
                //       ),
                //     ),
                //   ))).toList()
                 
                 
                 ] ),
            ));
          
  }
}

