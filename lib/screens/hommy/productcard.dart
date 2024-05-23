import 'package:flutter/material.dart';

class productCard extends StatelessWidget {
  const productCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector( 
      onTap: () {},
      child: Container(
        height: 300, width: 180,
       
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200, width: 180,
              decoration: BoxDecoration(image: const DecorationImage(image: AssetImage('assets/furniture_grid/1.jpg',), fit: BoxFit.cover), borderRadius: BorderRadius.circular(15)),
            ), 
            const SizedBox(height: 5,), 
            const Text('White Sofa', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),), 
            Text('\$700', 
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16, 
            color: Colors.black.withOpacity(0.5)),
            ), 
          ], 
        ),
      ),
    );
  }
}

