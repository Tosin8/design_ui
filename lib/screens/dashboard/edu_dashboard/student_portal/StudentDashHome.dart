import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StudentDashHome extends StatelessWidget {
  const StudentDashHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                
                decoration: const BoxDecoration(color: Colors.blue),
              ),
            ), 
            Expanded(
              flex: 5,
              child: Container(
                decoration: const BoxDecoration(color: Colors.green),
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