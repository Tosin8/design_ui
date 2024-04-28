// import 'package:animate_do/animate_do.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:ui_design/screens/furniture_gridview/detail_screen/product_detail.dart';
// import 'package:ui_design/screens/furniture_gridview/widgets/home_header.dart';

// import 'model/product.dart';
// import 'model/product_card.dart';


// class FurnitureGrid extends StatefulWidget {
//   const FurnitureGrid({super.key});

//   @override
//   State<FurnitureGrid> createState() => _FurnitureGridState();
// }

// class _FurnitureGridState extends State<FurnitureGrid> {
 

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold( 
//       appBar: AppBar(
//         leading: const Icon(Icons.menu), 
//         title: const Text('Home Interior'),
//         centerTitle: true,

 
//       ),

//       body: const Stack(
//         children : [
//             HomeBody(),
//           //  Positioned( 
//           //   bottom: 0, left: 0, right: 0,
//           //    child: Container(
//           //      height: cartBarHeight, 
//           //     decoration: const BoxDecoration(
               
//           //     color: lemonwhite,
//           //       borderRadius: BorderRadius.only(
//           //         topLeft: Radius.circular(10), 
//           //         topRight: Radius.circular(10), 
//           //       )
//           //     ),
              
//           //    ),
//           //  )
//     ]  ), 
//             );
          
//   }
// }

// class HomeBody extends StatelessWidget {
//   const HomeBody({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//               padding: const EdgeInsets.all(8.0), 
//               color: const Color(0xffeaeaea),
//               child: Column(
//      children: [
//        FadeIn(
//          duration: const Duration(milliseconds: 1000),
//          child:const HomeHeader(), 
               
         
               
//              ),
           
         
       
//        const SizedBox(height: 5), 
//        Expanded(child: 
       
//           FadeInLeft(
//            delay: const Duration(milliseconds: 1000),
//            duration: const Duration(milliseconds: 1000),
//            // child: GridView.count(
//            //   crossAxisCount: 2,
//            //    padding: const EdgeInsets.all(8), crossAxisSpacing: 20,
//            //     mainAxisSpacing: 20,
//            child:    SingleChildScrollView(
//              child: GridView.builder(
//                           physics: const NeverScrollableScrollPhysics(),
//                  shrinkWrap: true,
//                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                    crossAxisCount: 2,
//                    crossAxisSpacing: 10.0,
//                    childAspectRatio: 0.75,
//                    mainAxisSpacing: 6.0,
//                  ),
                       
//                          itemCount: products.length,
//                          itemBuilder: (_, index){
//                            return productcard(
//                products: products[index], press: () {
//                 Navigator.push(context, 
//                 MaterialPageRoute(builder: (context) => const ProductDetails())); 
//                             }   );
//                          }
//                        ),
//            ),
//            ),
       
             
           
//                ) ], 
//              ),
//        );
//   }
// }



// //  children: _listItem.map((item) => Card(
//            //   elevation: 0, 
//            //   color: Colors.transparent,
//            //   child: Container(
//            //     decoration: BoxDecoration(
//            //       borderRadius: BorderRadius.circular(10),
//            //       image: DecorationImage(
//            //         image: AssetImage(item), 
//            //         fit: BoxFit.cover
//            //         )
//            //     ),
//            //     child: Container(
//            //       decoration: BoxDecoration(
//            //         borderRadius: BorderRadius.circular(10),
//            //         gradient: LinearGradient(colors: [
//            //           Colors.black.withOpacity(.4), 
//            //           Colors.black.withOpacity(.1), 
         
//            //         ], begin: Alignment.bottomRight)
//            //       ), 
//            //       child: Transform.translate(
//            //         offset: const Offset(60, -50),
//            //         child: Container(
//            //           child: IconButton(
                       
//            //             onPressed: _changeFavs, 
//            //             icon: _favs ? 
//            //             const Icon(Icons.favorite_border_outlined, color: Colors.white) : const Icon(Icons.favorite, color: Colors.black,
//            //             )
//            //             ),
//            //         ),
//            //       ),
//            //     ),
//            //   ))).toList()
            
            
//              // final List<String> _listItem =[
//   //   'assets/furniture_grid/1.jpg', 
//   //   'assets/furniture_grid/2.jpg', 
//   //   'assets/furniture_grid/3.jpg', 
//   //   'assets/furniture_grid/4.jpg', 
//   //   'assets/furniture_grid/5.jpg', 
//   //   'assets/furniture_grid/6.jpg', 
//   //   'assets/furniture_grid/7.jpg', 
//   //   'assets/furniture_grid/8.jpg', 
//   // ]; 
//   // bool _favs = false; 
//   //  void _changeFavs(){
//   //   setState(() {
//   //     _favs = !_favs; 
//   //   });
//   // }