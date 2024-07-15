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
          color: const Color(0xFFEAEAEA),
          child: LayoutBuilder(
            builder: (context, BoxConstraints connstraints) {
              
            
            return  Stack(
              children: [
                Positioned(
                  top: 0,
                  right: 0,
                  left: 0,
                  height: 85,
                  child: HomeHeader(),
                ),
                Positioned(
                  top: 85,
                  left: 0,
                  right: 0,
                  bottom: cartBarHeight, // Account for the height of the bottom bar
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(defaultPadding * 1.5),
                        bottomRight: Radius.circular(defaultPadding * 1.5),
                      ),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          child: GridView.builder(
                            padding: EdgeInsets.only(bottom: cartBarHeight), // Add padding to avoid overlap
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
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  height: cartBarHeight,
                  child: Container(
                    color: Colors.grey, // Placeholder color, adjust as needed
                    // Add content for the bottom bar here
                  ),
                ),
              ],
            ); 
    }  ),
        ),
      ),
    );
  }
}
