import 'package:flutter/material.dart';
import 'package:ui_design/screens/dashboard/edu_dashboard/student_portal/boards/middlescreen.dart';
import 'package:ui_design/screens/dashboard/edu_dashboard/student_portal/responsive_layout/devices/tabletLayout/sideMenuT.dart';

import 'tabletLayout/middleScreenT.dart';


class TabletViewL extends StatelessWidget {
  const TabletViewL({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: Colors.grey.shade100, 
      body: 
     const Row(
      children: [
        Expanded(
          flex: 1,
          child: SideMenuT()), 
        
        Expanded(
          flex: 3,
          child: MiddleScreenT())
      ],
     ), 
      );
  }
}