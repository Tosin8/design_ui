import 'package:flutter/material.dart';

class SizeConfig{
  late MediaQueryData _mediaQueryData; 
  late double screenWidth;
  late double screenHeight;
  late double defaultSize;
  late Orientation orientation;

  void init(BuildContext context){
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;

    defaultSize = orientation == Orientation.landscape ? 
    screenHeight * 0.024
     : screenWidth * 0.024;
  }
}