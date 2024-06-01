import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui_design/screens/dashboard/edu_dashboard/student_portal/boards/middlescreen.dart';
import 'package:ui_design/screens/dashboard/edu_dashboard/student_portal/boards/sideMenu.dart';

class StudentDashHome extends StatelessWidget {
  const StudentDashHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Row(
          children: [
            const Expanded(
              flex: 2,
              child: SizedBox(child: SideMenu())
              ),
            
            Expanded(
              flex: 7,
              child: Container(
                child: SizedBox(child: MiddleScreen(),),
              )), 
            Expanded(flex: 3,
              child: Container(
                decoration: const BoxDecoration(color: Colors.yellow),
              ),
            ), 
          ],
        ),
      ) ,
    );
  }
}