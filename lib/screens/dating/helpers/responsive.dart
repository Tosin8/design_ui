// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';


const int mobileWidth = 852; 
  const int webWidth = 1200; 
class ResponsiveWidget extends StatelessWidget {

  final Widget web; 
  final Widget tablet; 
  final Widget mobile; 
  

  
  const ResponsiveWidget({
    Key? key,
    required this.web,
    required this.tablet,
    required this.mobile,
  }) : super(key: key);


  static bool isMobile (BuildContext context) => MediaQuery.of(context).size.width < mobileWidth; // 600
  static bool isTablet (BuildContext context) => MediaQuery.of(context).size.width >= mobileWidth && MediaQuery.of(context).size.width < webWidth;  
  static bool isWeb (BuildContext context) => MediaQuery.of(context).size.width >= webWidth;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if(constraints.maxWidth >= webWidth){
        return web;
      } else if(constraints.maxWidth >= mobileWidth && constraints.maxWidth <= webWidth){
        return tablet;
      } else {
        return mobile;

      }
      
    }); 
  }
}
