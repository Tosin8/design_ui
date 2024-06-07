import 'package:flutter/material.dart';

import '../../../boards/middlescreen.dart';

class NewCourseTitleM extends StatelessWidget {
  const NewCourseTitleM({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Row(
     //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        titleHeader( title: 'New Courses'),
       // SizedBox(width: 100,), 
       Spacer(flex: 1,),
        Text('View All', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w100),), 
        SizedBox(width: 2,), 
      ],
    );
  }
}