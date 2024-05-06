import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

final List<Map<String, dynamic>> cappccuinoProduct = [
   


  {
    'title': '', 
    'image': '',
    'price': '',
    'description': '',
    'volume': '',
  }, 
  {}
];
class CappcuinoScreen extends StatelessWidget {
  const CappcuinoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
         height: MediaQuery.of(context).size.height,
         child: CarouselSlider(
          items: _cappccuinoProduct.map((cappcc))
         ),
      ),
    );
  }
}