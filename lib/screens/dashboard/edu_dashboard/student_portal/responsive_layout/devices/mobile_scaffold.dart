import 'package:flutter/material.dart';
import 'package:ui_design/screens/dashboard/edu_dashboard/student_portal/boards/middlescreen.dart';
import 'package:ui_design/screens/dashboard/edu_dashboard/student_portal/boards/rightscreen.dart';
import 'package:ui_design/screens/dashboard/edu_dashboard/student_portal/responsive_layout/devices/mobileLayout/middleScreenMobile.dart';
import 'package:ui_design/screens/dashboard/edu_dashboard/student_portal/responsive_layout/devices/mobileLayout/sideMenuMobile.dart';

import 'mobileLayout/rightScreenMobile.dart';

class MobileView extends StatelessWidget {
  const MobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          //backgroundColor: Colors.grey[900],
        ), backgroundColor: Colors.grey[300],
        drawer: const Drawer(

          child: SideMenuMobile(),
        ),
        body: ListView(
          children: [
            MiddleScreenMobile(),
            RightScreenM()
            ]), 
        
      ),
    );
  }
}