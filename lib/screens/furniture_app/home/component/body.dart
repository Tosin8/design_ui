import 'package:flutter/material.dart';
import 'package:ui_design/screens/furniture_app/constants.dart';

import 'titleText.dart';

class FurnitureBody extends StatelessWidget {
  const FurnitureBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          titleText(name: 'Browse by Categories',), 
          SizedBox(height: 20), 
          SizedBox(
            width: 205,
            child: AspectRatio(aspectRatio: 0.83, 
            child: Stack(
              alignment: Alignment.bottomCenter, 
              children: [
                Container(
            color: Colors.blueAccent, 
                ), 
                ClipPath(
                  child: AspectRatio(aspectRatio: 1.025, 
                  child: Container(color: kSecondaryColor),),
                )
              ],
            ),),
          )
        ],
      )
    );
  }
}


class CategoryCustomShape extends CustomClipper<Path> {
  @override
Path getClip(Size size) {
  Path path = Path(); 
  double height = size.height; 
  double width = size.width;
  double cornerSize = 30; 

  path.lineTo(0, height - cornerSize); 
  path.quadraticBezierTo(0, height, cornerSize, height);
  path.lineTo(width - cornerSize, height) ; 
  path.quadraticBezierTo(width, height, width, height - cornerSize); 
  path.lineTo(width, 0); 
  path.close(); 
  return path; 
}

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
  return true; 
  }

}