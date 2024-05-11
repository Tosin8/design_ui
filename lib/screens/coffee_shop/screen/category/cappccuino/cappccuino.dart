// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';

// import 'package:ui_design/screens/coffee_shop/screen/category/cappccuino/cappccuino_card.dart';

// import '../../../model/category/cappccuino.dart';


// class CappcuinoScreen extends StatelessWidget {
//   const CappcuinoScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//         scrollDirection: Axis.vertical,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const SizedBox(height: 60,), 
//             // Container(
//             //   width: MediaQuery.of(context).size.width,
//             //    height: MediaQuery.of(context).size.height,
//             //    child: 
//             CarouselSlider(
//                 options: CarouselOptions(height: 230, 
//                 viewportFraction: 0.60, 
                
//                 enlargeCenterPage: true),
                
//                 items:List.generate(cappccuinos.length, (index) => CappccuinoCard(cappccuinos: cappccuinos[index]))
//                ),
//             const SizedBox(height: 30,), 
//             Center(
//               child: Container(
//                 height: 30, 
//                 width: 180,
//                 decoration: BoxDecoration(
//                   boxShadow: [
//                     BoxShadow(
//                     color: Colors.grey.withOpacity(.6), 
//                     spreadRadius: 0.2, 
//                     blurRadius: 3, 
//                   )],
//                   color: Colors.white, borderRadius: BorderRadius.circular(15)), 
//                 child: const Align(
//                   child: Text(
//                     'Make your own coffee', 
//                     style: TextStyle(fontSize: 13),),
//                 ),
//               ))
//           ],
//         ),
      
//     );
//   }
// }