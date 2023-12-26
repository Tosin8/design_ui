// import 'package:flutter/material.dart';

// import 'city_location.dart';
// import 'lat_long.dart';

// class CityImage extends StatelessWidget {

//   final CityLocation location; 
//   const CityImage({super.key, required this.location});

//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size; 
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 16), 
//       height: size.height * 0.5, 
//       width: size.width * 0.8, 
//       decoration: BoxDecoration(
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black26, blurRadius: 2, spreadRadius: 1
//           )
//         ], 
//         borderRadius: BorderRadius.all(Radius.circular(8)), 
//       ),
//       child: Stack(
//         children: [
//           SizedBox.expand(
//             child: ClipRRect(
//               borderRadius: BorderRadius.circular(8),
//               child: Image.asset(
//                 location.urlImage, 
//                 fit: BoxFit.cover),
                
//           ), ),
//           Container(
//             padding: const EdgeInsets.all(8), 
//             child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, 
//             children: [
// Text(location.name,
//  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20)),  
// CityLatLong(location: location, ), 
//             ],)
//           )
//         ],
//       ),
//     );
//   }
// }