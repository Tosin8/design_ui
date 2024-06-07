import 'package:flutter/material.dart';
import 'package:ui_design/screens/dashboard/edu_dashboard/student_portal/boards/rightscreen.dart';

import '../../../boards/middlescreen.dart';

class RightScreenM extends StatelessWidget {
  const RightScreenM({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
      const PremiumCard(), 
      const SizedBox(height: 10,), 
      
      // assignment title. 
       const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      titleHeader(title: 'Assignments',),
                
                      AddIcon (), 
                    ],
                  ),
                  const SizedBox(height: 6,), 
                   Container(
                  width: 360, height: 80, 
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15), 
                    color: Colors.white
                  ),
                  child:  const AssignmentCard(
                        color: Colors.purple, 
                        title: 'Methods of data', 
                        subtitle: '07 July, 10:00 AM', 
                        progressText: 'In Progress',
                      ), 
                ), 
                 const SizedBox(height: 8,), 
                 Container(
                  width: 360, height: 80, 
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15), 
                    color: Colors.white
                  ),
                  child:  const AssignmentCard(
                        color: Colors.green, 
                        title: 'Market Research', 
                        subtitle: '03 July, 4:00 PM', 
                        progressText: 'Completed',
                      ), 
                ), 
                const SizedBox(height: 8,), 
                 Container(
                  width: 360, height: 80, 
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15), 
                    color: Colors.white
                  ),
                  child:  const AssignmentCard(
                        color: Colors.purple, 
                        title: 'Data Collection', 
                        subtitle: '12 July, 5:00 AM', 
                        progressText: 'Upcoming',
                      ), 
                ), 
                SizedBox(height: 8,), 
                 Container(
                  width: 360, height: 80, 
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15), 
                    color: Colors.white
                  ),
                  child:  AssignmentCard(
                        color: Colors.purple, 
                        title: 'Analysis of data', 
                        subtitle: '06 July, 10:00 AM', 
                        progressText: 'In Progress',
                      ), 
                ), 
                SizedBox(height: 10,), 
        ],
      ),
    );
  }
}