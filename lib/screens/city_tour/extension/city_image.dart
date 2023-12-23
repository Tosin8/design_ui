import 'package:flutter/material.dart';

import 'city_location.dart';

class CityImage extends StatelessWidget {

  final CityLocation location; 
  const CityImage({super.key, required this.location});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; 
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16), 
      height: size.height * 0.5, 
      width: size.width * 0.8, 
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black26, blurRadius: 2, spreadRadius: 1
          )
        ], 
        borderRadius: BorderRadius.all(Radius.circular(8)), 
      ),
      child: Stack(
        children: [
          buildImage(), 
          Container(
            padding: const EdgeInsets.all(8), 
            child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, 
            children: [
buildTopText(), 
LatLongWidget(location: location), 
            ],)
          )
        ],
      ),
    );
  }
}