import 'package:flutter/material.dart';
import 'package:ui_design/screens/dashboard/edu_dashboard/student_portal/boards/middle_cards/user_card.dart';

class MiddleScreen extends StatelessWidget {
  const MiddleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const UserCard(), 
            const SizedBox(height: 20,),

            // 
            const Text('New Courses', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.grey),), 
            const SizedBox(height: 20,),

            // Subject Card
            Container(
              width: 230,
              height: 160, 
              decoration: BoxDecoration(
                color: Colors.grey[300], 
                borderRadius: BorderRadius.circular(30), 
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade500,
                    offset: const Offset(3.0, 3.0), 
                    blurRadius: 15.0,
                    spreadRadius: 1.0,  
                  ), 
                  const BoxShadow(
                    color: Colors.white, 
                    offset: Offset(-3.0, -3.0), 
                    spreadRadius: 1.0,  
                    blurRadius: 15.0, 
                  ),
                ],
        
               
              ),
              child:  Padding(
                padding: const EdgeInsets.all(22.0),
                child: Column(
                  children: [
                
                    // Top layer. 
                    Row(
                      children: [

                        // Course Image
                        Container(
                          width: 46,
                           height: 46,
                          decoration: const BoxDecoration(
                            color: Colors.pinkAccent, 
                          shape: BoxShape.circle, 
                          ),
                          child: Padding( 
                            padding: const EdgeInsets.all(10),
                            child: Image.asset('assets/dashboard/icons/copy-writing.png', 
                          ),
                          ),
                
                        ), 
                        const SizedBox(width: 16,), 
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Content Writing',
                             style: TextStyle(color: Colors.black, 
                             fontWeight: FontWeight.bold,
                             wordSpacing: 2.0 ),), 
                            SizedBox(height: 2,), 
                            Text('12 Lessons', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w100),)
                          ],
                        )
                      ],
                    ), 

const SizedBox(height: 20,), 
                    // Bottom Layer
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Type', style: TextStyle(color: Colors.grey),), 
                        Text('Data Research', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)
                      ],
                    )
                  ],
                  
                ),
              ),
            ), 
          ],
        ),
      ),
    );
  }
}