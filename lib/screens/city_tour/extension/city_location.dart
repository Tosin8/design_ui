// import 'package:flutter/material.dart';
// import 'package:ui_design/screens/city_tour/extension/city_image.dart';

// import '../model/location.dart';
// import 'city_expanded_content.dart';

// class CityLocation extends StatefulWidget {
//   final Location location; 
//   const CityLocation({super.key, required this.location});

//   @override
//   State<CityLocation> createState() => _CityLocationState();
// }

// class _CityLocationState extends State<CityLocation> {
//   bool isExpanded = false;
//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size; 
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 4), 
//       child: Stack(
//         alignment: Alignment.center,
//         children: [
//           AnimatedPositioned(
//             duration: Duration(milliseconds: 500),
//             bottom: isExpanded ? 40 : 100,
//             width: isExpanded ? size.width * 0.78 : size.width * 0.7,
//             height: isExpanded ? size.height * 0.6 : size.height * 0.5,
//             child: ExpandedContent(location: widget.location),
//           ),
//           AnimatedPositioned(
//             duration: Duration(milliseconds: 500),
//             bottom: isExpanded ? 150 : 100,
//             child: GestureDetector(
//               onPanUpdate: onPanUpdate,
//               onTap: () {},
//               child: CityImage(location: widget.location),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//         void onPanUpdate(DragUpdateDetails details) {
//     if (details.delta.dy < 0) {
//       setState(() {
//         isExpanded = true;
//       });
//     } else if (details.delta.dy > 0) {
//       setState(() {
//         isExpanded = false;
//       });
      
//     }}
// }

