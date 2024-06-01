import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  const UserCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: BoxDecoration(
        color: Colors.black, 
        borderRadius: BorderRadius.circular(16), 
      ),
      height: 200,
      width: 875, 
      child: const Row(
        children: [
          CircleAvatar(
            radius: 40,
            child: Image(image: AssetImage('assets/dashboard/user.jpg'),),
          ), 
        Column(
            children: [
              Text('Hannah Hill', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
            ],
          ), 
        ],
      ), 
      
    );
  }
}