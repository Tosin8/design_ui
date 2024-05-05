import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_design/screens/coffee_shop/widgets/home.dart';

class SplashButton extends StatelessWidget {
  const SplashButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
                onTap: () {
                  Get.to(() => const CoffeeHome());
                },
                child: Container(
                  height: 60, width: 260,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffFFE5B4)
                  ),
                  child: const Align(child: Text('Enter Shop',
                  style: TextStyle(fontSize: 16),)),
                ),
              ); 
  }
}