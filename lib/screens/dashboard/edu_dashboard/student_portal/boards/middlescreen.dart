import 'package:flutter/cupertino.dart';
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
            UserCard(), 
            SizedBox(height: 20,),

            // 
            Text('New Courses', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.grey),), 
            SizedBox(height: 20,),

            // Subject Card
            Container(
              height: 200, 
              child: Column(
                children: [
                  Row(
                    children: [],
                  )
                ],
                
              ),
            ), 
          ],
        ),
      ),
    );
  }
}