import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:ui_design/screens/coffee_shop/screen/category/cappccuino_card.dart';

import '../../model/category/cappccuino.dart';


class CappcuinoScreen extends StatelessWidget {
  const CappcuinoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
         height: MediaQuery.of(context).size.height,
         child: CarouselSlider(
          options: CarouselOptions(height: 200, 
          viewportFraction: 0.70, enlargeCenterPage: true),
          
          items:List.generate(cappccuinos.length, (index) => CappccuinoCard(cappccuinos: cappccuinos[index]))
         ),
      ),
    );
  }
}