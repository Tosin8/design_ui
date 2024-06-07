import 'package:flutter/material.dart';
import 'package:ui_design/screens/dashboard/edu_dashboard/student_portal/boards/middle_cards/user_card.dart';
import 'package:ui_design/screens/dashboard/edu_dashboard/student_portal/responsive_layout/devices/mobileLayout/userCardMobile.dart';

class MiddleScreenMobile extends StatefulWidget {
  const MiddleScreenMobile({super.key});

  @override
  State<MiddleScreenMobile> createState() => _MiddleScreenMobileState();
}

class _MiddleScreenMobileState extends State<MiddleScreenMobile> {
String _dropdownvalue = 'Weekly'; 
  final _items = [
    'Weekly', 
    'Monthly', 
    'Yearly'
  ];

  @override
  Widget build(BuildContext context) {

       List<double> hourlyWorking = [
    22, 
    67.7, 
    55.9, 
    78, 
    78, 
    34.9, 
    28.8, 
  ];
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                UserCardM(), 
              ],
            ),
          )
        ],
      ),
    );
  }
}