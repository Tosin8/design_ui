import 'package:flutter/material.dart';
import 'package:ui_design/screens/furniture_app/constants.dart';
import 'package:ui_design/screens/furniture_app/model/cateogory.dart';

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
            width: 200,
            child: AspectRatio(aspectRatio: 0.83, 
            child: Stack(
              alignment: Alignment.bottomCenter, 
              children: [
            //     Container(
            // color: Colors.blueAccent, 
            //     ), 
                ClipPath(
                  child: AspectRatio(aspectRatio: 1.025, 
                  child: Container(
                    padding: EdgeInsets.all(20),
                    color: kSecondaryColor,child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      titleText(name: category.title), 
                      SizedBox(height: 20), 
                    ],
                  ),),),
                ), 
                Positioned(
                  top: 0, left: 0, right: 0,
                  child: AspectRatio(
                    aspectRatio: 1.15, 
                    child: FadeInImage.assetNetwork(placeholder: 'assets/furniture/icons/spinner.gif', image: category.image),
                ))
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
  path.lineTo(width, cornerSize); 
  path.quadraticBezierTo(width, 0, width - cornerSize, 0); 
  path.lineTo(cornerSize, cornerSize * 0.75); 
  path.quadraticBezierTo(0, cornerSize, 0, cornerSize * 2); 
  //path.lineTo(width, 0); 
  path.close(); 
  return path; 
}

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
  return true; 
  }

}