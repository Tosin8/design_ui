import 'package:flutter/material.dart';
import 'package:ui_design/screens/dashboard/edu_dashboard/student_portal/boards/sideMenuMobile.dart';

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
      ),
    );
  }
}