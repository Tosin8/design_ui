import 'package:flutter/material.dart';

class ShopLanding extends StatelessWidget {
  const ShopLanding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        backgroundColor: Colors.white, 
        leading: const Icon(Icons.menu), 
        title: const Text('Kitchen'), 
      ),
    );
  }
}