
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        
        image: const DecorationImage(
          image: AssetImage(
            'assets/furniture_grid/9.jpg',),
             fit: BoxFit.cover 
      
      )),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(colors: [
            Colors.black.withOpacity(.4), 
            Colors.black.withOpacity(.1),
             
          ], 
          begin: Alignment.bottomCenter)
        ),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Text(
              'Lifestyle Sales', 
              style: TextStyle(color: Colors.white, 
              fontWeight: FontWeight.w600, fontSize: 30),
            ), 
            const SizedBox(height: 10), 
            const Text('Elegant furnitures of varieties made to\n last longer at the differences of the making ', style: TextStyle(color: Colors.white), 
            textAlign: TextAlign.center,), 
            const SizedBox(height: 15), 
            Container(
    
              height: 50,
              margin: const EdgeInsets.symmetric(horizontal: 50),
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Center(child: Text('Shop Here', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.grey[700]),)),
            ), 
            const SizedBox(height: 18), 
    
          ],
        ),
      ),
    );
  }
}

