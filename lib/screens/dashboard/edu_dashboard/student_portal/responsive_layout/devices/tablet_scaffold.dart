import 'package:flutter/material.dart';
import 'package:ui_design/screens/dashboard/edu_dashboard/student_portal/boards/middlescreen.dart';

import '../../boards/sideMenu.dart';
import 'tabletLayout/sideMenuT.dart';

class TabletView extends StatelessWidget {
  const TabletView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: Colors.grey.shade100, 
      body: const SafeArea(
        child: Row(
          children: [
            
              SizedBox(child: SideMenuT()), 

               
          ]),
    ));
  }
}