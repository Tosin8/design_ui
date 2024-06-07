import 'package:flutter/material.dart';

class UserCardM extends StatelessWidget {
  const UserCardM({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: BoxDecoration(
        color: Colors.black, 
        borderRadius: BorderRadius.circular(3), 
      ),
      height: 110,
      width: 450, 
      child: const Padding( 
        padding: EdgeInsets.all(18),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('assets/dashboard/users/1.jpg'),
            
            ), 
            SizedBox(width: 30,), 

            // the student Info
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Hannah Hill', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                Text('Computer Science Student', style: TextStyle(color: Colors.grey, fontSize: 15, fontWeight: FontWeight.w200),), 

SizedBox(height: 10,), 
                 // Users Info
            Row(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    CircleAvatar(
              radius: 10,
              backgroundImage: AssetImage('assets/dashboard/users/2.jpg'),
            
            ), 
               Positioned(
                right: -16, 
                 child: CircleAvatar(
                               radius: 10,
                               backgroundImage: AssetImage('assets/dashboard/users/3.jpg'),
                             
                             ),
               ),
                Positioned(
                right: -30, 
                 child: CircleAvatar(
                               radius: 10,
                               backgroundImage: AssetImage('assets/dashboard/users/4.jpg'),
                             
                             ),
               ),
              
                  ],
                ), 
                SizedBox(width: 40,), 
                Text('+24 Classmates', style: TextStyle(color: Colors.white, fontSize: 10, ),)
              ],
            )
              ],
            ), 


           
          ],
        ),
      ), 
      
    );
  }
}