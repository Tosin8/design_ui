// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:ui_design/screens/dashboard/edu_dashboard/student_portal/boards/middlescreen.dart';

class Rightscreen extends StatelessWidget {
  const Rightscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView( 
         scrollDirection: Axis.vertical, 
         children: [
          Container(
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
      
                // Premium Card
                const PremiumCard(), 
                const SizedBox(height: 10,), 

                // Assignments title. 
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    titleHeader(title: 'Assignments',),
              
                    AddIcon (), 
                  ],
                ),
                const SizedBox(height: 16,), 
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

                const SizedBox(height: 16,), 
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
                const SizedBox(height: 16,), 
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
                SizedBox(height: 16,), 
                 Container(
                  width: 360, height: 80, 
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15), 
                    color: Colors.white
                  ),
                  child:  AssignmentCard(
                        color: Colors.purple, 
                        title: 'Methods of data', 
                        subtitle: '07 July, 10:00 AM', 
                        progressText: 'In Progress',
                      ), 
                ), 

              ],
            ),
          )
         ],
      
      ),
    );
  }
}

class AssignmentCard extends StatelessWidget {
  const AssignmentCard({
    Key? key,
    required this.color,
    required this.subtitle,
    required this.progressText, required this.title,
  }) : super(key: key);

final String title; 
final Color color; 
final String subtitle;
final String progressText;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Row(
        children: [
          const SizedBox(width: 10,), 
           Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               
              Text(title, 
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),), 
              const SizedBox(height: 7,), 
              Text(subtitle,
               style: const TextStyle(color: Colors.grey, fontSize: 12, fontWeight: FontWeight.w200),),
            ],
          ), 
          const SizedBox(width: 60,), 
          Container(
            height: 30, width: 100,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16),
      color: color,  
    ),
    child:  Align(child: Text(progressText, style: const TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),)),
          ),
        ],
      ),
    );
  }
}

class PremiumCard extends StatelessWidget {
  const PremiumCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260, 
      width: 380, 
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20), 
        color: Colors.black
      ),
      child:  Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
    
            // title 
            const Text('Samyie', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
            ),
            
            const SizedBox(height: 20,), 
            Row(
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Go Premium', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
                    ), 
    
                    SizedBox(height: 10,),
                    Text('Explore 200+ Courses with \nPremium Membership', style: TextStyle(color: Colors.grey, fontSize: 12, fontWeight: FontWeight.w200),
                    ), 
                  ],
                ), 
                const SizedBox(width: 30,), 
                Expanded(
                  child: Container(
                    width: 80, 
                    height: 120,
                    child: Image.asset('assets/dashboard/icons/model.png')))
              ],
            )
    , 
    const SizedBox(height: 20,), 
    
    
    GestureDetector( 
      onTap: () {}, 
      child: Container(
        height: 32, width: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.yellowAccent
        ),
        child: const Align(child: Text('Get Access')),
      ),
    )
    
          ],
        ),
      ),
    );
  }
}