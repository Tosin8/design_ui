import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:ui_design/screens/dashboard/edu_dashboard/student_portal/responsive_layout/devices/mobileLayout/newcoursetitlem.dart';
import 'package:ui_design/screens/dashboard/edu_dashboard/student_portal/responsive_layout/devices/mobileLayout/subjectCard1m.dart';
import 'package:ui_design/screens/dashboard/edu_dashboard/student_portal/responsive_layout/devices/mobileLayout/subjectCard2m.dart';
import 'package:ui_design/screens/dashboard/edu_dashboard/student_portal/responsive_layout/devices/mobileLayout/userCardMobile.dart';

import '../../../boards/middle_cards/graph/bar_graph.dart';
import '../../../boards/middlescreen.dart';

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
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
            FadeIn(child: const UserCardM()), 
            const SizedBox(height: 10,), 
            FadeIn(child: const NewCourseTitleM()), 
            const SizedBox(height: 10,), 

            // Subject Card
            FadeInLeft(child: const SubjectCard1M()), 
            const SizedBox(height: 10,), 
            FadeInLeft(child: const SubjectCard2M()), 
            const SizedBox(height: 10,), 
            FadeInLeft(child: const SubjectCard3M()), 
            const SizedBox(height: 10,), 

            // 2nd layer
             Container(
                    width: 440,
                    height: 400, 
                      decoration: BoxDecoration(
                      color: Colors.white, 
                      borderRadius: BorderRadius.circular(15), 
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade500,
                          offset: const Offset(1.0, 1.0), 
                          blurRadius: 12.0,
                          spreadRadius: 1.0,  
                        ), 
                        const BoxShadow(
                          color: Colors.white, 
                          offset: Offset(-1.0, -1.0), 
                          spreadRadius: 1.0,  
                          blurRadius: 12.0, 
                        ),
                      ],
                          
                     
                    ),
                    child:   Padding(
                      padding: const EdgeInsets.all(15.0),
       
                      // layer 1: hours activity and weekly. 
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
       
                              // Hours rate and weekly activity.
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  titleHeader(title: 'Hours Activity'),
                                  SizedBox(height: 3,),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('+30%' , style: TextStyle(color: Colors.greenAccent, fontWeight: FontWeight.bold),), 
                                      SizedBox(width: 10,), 
                                      Text('Increase than last week'), 
                                    ],
                                  )
                                ],
                              ),
                           
                          const SizedBox(width: 30,), 
                           Expanded(
                            child: Container( 
                              height: 30, width: 20,
                            decoration:  BoxDecoration(
                              borderRadius: const BorderRadius.all(Radius.circular(30)), 
                              border: Border.all(
                                color: const Color.fromRGBO(224, 224, 224, 1), ), 
                            ),
                            child: Align(child: DropdownButton<String>(
                              items: _items.map((String item){
       return DropdownMenuItem(value: item,child: Text(item, style: const TextStyle(fontSize: 12),),);
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  _dropdownvalue = newValue!;
                                });
                              },
                              value: _dropdownvalue,
                              borderRadius: BorderRadius.circular(10), 
                              icon: const Icon(Icons.keyboard_arrow_down), 
                              iconSize: 20,
                              style: const TextStyle(fontSize:16, color: Colors.black),
                              underline: Container(),
                              ))
       
                             ))   ],
                          ), 
                       
                       const SizedBox(height: 60,), 
       
                       // flchart. 
                     SizedBox(
                      height: 230,
                      child: MyBarGraph(
                        hourlyWorking: hourlyWorking,
                        )), 
                        ], 
                    ), 
                    ), 
                    ), 

const SizedBox(height: 10,), 
const DailyScheduleCardM(), 
const SizedBox(height: 10,), 

Row(
                children: [
                  const titleHeader(title: 'Course You\'re taking'),
                  Expanded(child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      // active button. 
                      Container(
                       height: 30,
                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                        child: const Padding(
                          padding: EdgeInsets.all(3.0),
                          child: Row(
                            children: [
                              Text('Active'), 
                              Icon(Icons.keyboard_arrow_down_rounded),
                            ],
                          ),
                        ),
                      )
                  , 
                  const SizedBox(width: 10,), 
                  const AddIcon()
                    ],
                  ),)
                ],
              ), 
    
    const SizedBox(height: 10,), 

    // third layer - course being taken. 
    const CourseTakeCard(
      courseCount: 0.4,
      courseName: '3D Design Course',
      courseTutor: 'Dr.Yen Ben',
      courseTime: '6hr 50mins',
      courseProgress: 15,
      courseProgressNum: '40%',),
       const SizedBox(height: 10,), 

      const CourseTakeCard(
      courseCount: 0.8,
      courseName: 'Polymetric and Polygon',
      courseTutor: 'Prof.Sara',
      courseTime: '46mins',
      courseProgress: 15,
      courseProgressNum: '80%',), 
                 
        ],
      ),
    );
             
            
          
        
        
      
    
  }
}

class DailyScheduleCardM extends StatelessWidget {
  const DailyScheduleCardM({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
       width: 380,
                height: 440, 
                  decoration: BoxDecoration(
                  color: Colors.white, 
                  borderRadius: BorderRadius.circular(15), 
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade500,
                      offset: const Offset(1.0, 1.0), 
                      blurRadius: 12.0,
                      spreadRadius: 1.0,  
                    ), 
                    const BoxShadow(
                      color: Colors.white, 
                      offset: Offset(-1.0, -1.0), 
                      spreadRadius: 1.0,  
                      blurRadius: 12.0, 
                    ),
                  ],
                      
                 
                ),
                child:  Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    const titleHeader(title: 'Daily Schedule'), 

                    ListTile(
                      leading: Container(
                        height: 40, width: 40, 
                        decoration: BoxDecoration(color: Colors.blueGrey.shade100, borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Image.asset('assets/dashboard/icons/design_system.png')),
                      ), 
                      title: const Text('Design System', style: TextStyle(color: Colors.black),),
                      subtitle: const Text('Lecture - Class 1', style: TextStyle(color: Colors.grey, fontSize: 10, fontWeight: FontWeight.w100,),),
                      trailing: const DailyScheduleTrailing()
                    ), 
                    const SizedBox(height: 3,), 
                     ListTile(
                      leading: Container(
                        height: 40, width: 40, 
                        decoration: BoxDecoration(color: Colors.yellow, borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Image.asset('assets/dashboard/icons/typography.png')),
                      ), 
                      title: const Text('Typography', style: TextStyle(color: Colors.black),),
                      subtitle: const Text('Group - Test', style: TextStyle(color: Colors.grey, fontSize: 10, fontWeight: FontWeight.w100,),),
                      trailing: const DailyScheduleTrailing()
                    ), 
                    const SizedBox(width: 5,), 

                     ListTile(
                      leading: Container(
                        height: 40, width: 40, 
                        decoration: BoxDecoration(color: Colors.purple.shade100, borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Image.asset('assets/dashboard/icons/design_system.png')),
                      ), 
                      title: const Text('Color Style', style: TextStyle(color: Colors.black),),
                      subtitle: const Text('Group - Test', style: TextStyle(color: Colors.grey, fontSize: 10, fontWeight: FontWeight.w100,),),
                      trailing: const DailyScheduleTrailing()
                    ), 
                    const SizedBox(height: 5,), 
                     ListTile(
                      leading: Container(
                        height: 40, width: 40, 
                        decoration: BoxDecoration(color: Colors.pink.shade100, borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Image.asset('assets/dashboard/icons/visual-design.png')),
                      ), 
                      title: const Text('Visual Design', style: TextStyle(color: Colors.black),),
                      subtitle: const Text('Lecture - Class 3', style: TextStyle(color: Colors.grey, fontSize: 10, fontWeight: FontWeight.w100,),),
                      trailing: const DailyScheduleTrailing()
                    ),
                    const SizedBox(height: 5,), 
                     ListTile(
                      leading: Container(
                        height: 40, width: 40, 
                        decoration: BoxDecoration(color: Colors.orange.shade100, borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Image.asset('assets/dashboard/icons/security-testing.png')),
                      ), 
                      title: const Text('System Security', style: TextStyle(color: Colors.black),),
                      subtitle: const Text('Lecture - Class 1', style: TextStyle(color: Colors.grey, fontSize: 10, fontWeight: FontWeight.w100,),),
                      trailing: const DailyScheduleTrailing()
                    )
          
                    ],
                  ),
                ),
    );
  }
}

class SubjectCard3M extends StatelessWidget {
  const SubjectCard3M({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 140, 
      decoration: BoxDecoration(
        color: Colors.white, 
        borderRadius: BorderRadius.circular(15), 
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade500,
            offset: const Offset(1.0, 1.0), 
            blurRadius: 12.0,
            spreadRadius: 1.0,  
          ), 
          const BoxShadow(
            color: Colors.white, 
            offset: Offset(-1.0, -1.0), 
            spreadRadius: 1.0,  
            blurRadius: 12.0, 
          ),
        ],
            
       
      ),
      child:  Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        
            // Top layer. 
            Row(
              children: [
    
                // Course Image
                Container(
                  width: 80,
                   height: 80,
                  decoration: const BoxDecoration(
                    color: Colors.yellowAccent, 
                  shape: BoxShape.circle, 
                  ),
                  child: Padding( 
                    padding: const EdgeInsets.all(10),
                    child: Image.asset('assets/dashboard/icons/app.png', 
                  ),
                  ),
        
                ), 
                const SizedBox(width: 16,), 
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Mobile App Dev',
                     style: TextStyle(color: Colors.black, 
                     fontWeight: FontWeight.bold,
                     wordSpacing: 2.0 , fontSize: 18),), 
                    SizedBox(height: 2,), 
                    Text('23 Lessons', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w100, fontSize: 18),), 
                    SizedBox(height: 10,), 
                    Text('Type', style: TextStyle(color: Colors.grey),), 
                Text('Software Dev', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)
                  ],
                )
              ],
            ), 
    
   
    
          ],
          
        ),
      ),
    );
  }
}