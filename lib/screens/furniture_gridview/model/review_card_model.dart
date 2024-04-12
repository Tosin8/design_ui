import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class reviewcard extends StatelessWidget {
  const reviewcard({
    super.key, required this.userName, required this.reviewText,
  });

final String userName; 
final String reviewText; 
  @override
  Widget build(BuildContext context) {

     
    return Container(
      child:  Column(
        children: [
          // user profile 
          Row(
            children: [
              Icon(Iconsax.user), 
              SizedBox(width: 10,), 
              Text(userName, style: TextStyle(fontWeight: FontWeight.bold),)
            ],
          ), 
    SizedBox(height: 10,), 
          // rating star
           Row(
      children: [
        Icon(Icons.star, color: Colors.yellow,),
        Icon(Icons.star, color: Colors.yellow,),
        Icon(Icons.star, color: Colors.yellow,),
      ]
    ), 
    
    // review text 
    Text(reviewText), 
    SizedBox(height: 5,), 
    Row(
      children: [
        Text('3/05/2024'),
        SizedBox(width: 10,), 
        Text('5:00 PM')
      ],
    )
        ],
      ),
    );
  }
}