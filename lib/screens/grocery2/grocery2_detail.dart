import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Grocery2Detail extends StatelessWidget {
  const Grocery2Detail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios, color: Colors.black,)),
      ),
body: Stack(
  children: [
    // background color 
    Container(
      width: double.infinity, 
      height: double.infinity,
      decoration: const BoxDecoration(
        color:Colors.black, 
      ),
    )
  ]
    )
    );
  }
}