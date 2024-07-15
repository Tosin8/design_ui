import 'package:flutter/material.dart';
import 'package:ui_design/screens/grocery/constants/app_info.dart';

import 'model/product_model.dart';
import 'model/veggie/home_header.dart';
import 'model/veggie/veggie_productcard.dart';

class VeggieHome extends StatelessWidget {
  const VeggieHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: Container(
          color: Color(0xFFEAEAEA), 
          child: Stack(
            children: [
              Positioned(
                top: 0, 
                right: 0, 
                left: 0, 
                child: HomeHeader(), 
              ), 
       
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: defaultPadding), 
                  decoration: BoxDecoration(
                    color: Colors.white, 
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(defaultPadding * 1.5),  
                      bottomRight: Radius.circular(defaultPadding * 1.5),
                    )
                  ),
                  child: GridView.builder(
                    itemCount: veggie_products.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.75,
                      mainAxisSpacing: defaultPadding,
                      crossAxisSpacing: defaultPadding,
                    ),
                    
                     itemBuilder: (context, index) => ProductCard(
                      product: veggie_products[index], 
                      press: () {},
                      ),
                )), 
              ), 
SizedBox(height: cartBarHeight,)
            ]
          ),
        ))
    );
  }
}