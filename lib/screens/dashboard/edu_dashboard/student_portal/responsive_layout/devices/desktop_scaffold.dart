import 'package:flutter/material.dart';
import 'package:ui_design/screens/dashboard/edu_dashboard/student_portal/boards/middlescreen.dart';
import 'package:ui_design/screens/dashboard/edu_dashboard/student_portal/boards/sideMenu.dart';

class DesktopView extends StatelessWidget {
  const DesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body:SafeArea(
        child: Row(
          children: [
            const Expanded(
              flex: 2,
              child: SizedBox(child: SideMenu())
              ),
            
            const Expanded(
              flex: 7,
              child: SizedBox(child: MiddleScreen(),)), 
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