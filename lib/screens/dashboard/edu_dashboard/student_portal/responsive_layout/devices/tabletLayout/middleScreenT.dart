// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import 'package:ui_design/screens/dashboard/edu_dashboard/student_portal/boards/middle_cards/graph/bar_graph.dart';
import 'package:ui_design/screens/dashboard/edu_dashboard/student_portal/boards/middle_cards/user_card.dart';

import '../../../boards/rightscreen.dart';

class MiddleScreenT extends StatefulWidget {
  const MiddleScreenT({super.key});

  @override
  State<MiddleScreenT> createState() => _MiddleScreenTState();
}

class _MiddleScreenTState extends State<MiddleScreenT> {

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
      padding: const EdgeInsets.all(14.0),
     child: ListView(
      scrollDirection: Axis.vertical,
       children:[
         Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const UserCard(), 
              const SizedBox(height: 15,),
       
              // 
              const NewCourseTitle(), 
              const SizedBox(height: 10,),
       
              // Subject Card
              const Row(
                children: [
                  SubjectCard1(),
                  SizedBox(width: 35,), 
                  SubjectCard2(),
                  SizedBox(width: 35,), 
                  SubjectCard3(),
                ],
              ), 
              // Second layer - hours activity and daily schedule.  
       const SizedBox(height: 12,), 
       
              Row(
       
                // for the 2 cards : hours activity and daily schedule. 
                children: [
       
                  // For activity and bar chart. 
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
                    
               const SizedBox(width: 20,),       

        const DailyScheduleCardT(),            
            ]
              ), 

              // 
              const SizedBox(height: 18,),
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
      const SizedBox(height: 10,), 
      const PremiumCardT(), 
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
          Row(
            children: [
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
                    const SizedBox(width: 20,), 
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
            ],
          ), 

             
               
                const SizedBox(height: 16,), 
                 Row(
                   children: [
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

                                     const SizedBox(width: 20,), 

                                     Container(
                  width: 360, height: 80, 
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15), 
                    color: Colors.white
                  ),
                  child:  const AssignmentCard(
                        color: Colors.purple, 
                        title: 'Analysis of data', 
                        subtitle: '06 July, 10:00 AM', 
                        progressText: 'In Progress',
                      ), 
                ),        
      
                   ],
                 ), 
               
                 
                 
                
     ], 
     ),) 
     ]));
 
  }
}

class PremiumCardT extends StatelessWidget {
  const PremiumCardT({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220, 
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
            
            const SizedBox(height: 1,), 
            Row(
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Go Premium', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
                    ), 
    
                    SizedBox(height: 3,),
                    Text('Explore 200+ Courses with \nPremium Membership', style: TextStyle(color: Colors.grey, fontSize: 12, fontWeight: FontWeight.w200),
                    ), 
                  ],
                ), 
                const SizedBox(width: 30,), 
                Expanded(
                  child: Container(
                    width: 100, 
                    height: 120,
                    child: Image.asset('assets/dashboard/icons/model.png')))
              ],
            )
    , 
    const SizedBox(height: 1,), 
    
    
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

class CourseTakeCard extends StatelessWidget {
  const CourseTakeCard({
    Key? key,
    required this.courseName,
    required this.courseTutor,
    required this.courseTime,
    required this.courseProgress,
    required this.courseProgressNum,
    required this.courseCount,
  }) : super(key: key);
final String courseName; 
final String courseTutor; 
final String courseTime; 
final double courseProgress;
final String courseProgressNum; 
final double courseCount; 

  @override
  Widget build(BuildContext context) {
    return Container(
      width:   840,
               height: 80, 
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
               child: 
                       Padding(
                         padding: const EdgeInsets.all(18.0),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                              Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text(courseName, 
                                 style: const TextStyle(fontWeight: FontWeight.bold),),
                                 Text(courseTutor, style: const TextStyle(color: Colors.grey),),
                               ],
                             ), 
                              Column(
                               children: [
                                 const Text('Remaining'),
                                 Text(courseTime, 
                                 style: const TextStyle(fontWeight: FontWeight.bold),)
                               
                               ],
                             ), 
                            Row(
                              children: [
                                CircularPercentIndicator(
                                 circularStrokeCap: CircularStrokeCap.round,
                                 lineWidth: 4,
                                 animation: true, 
                                 animationDuration: Duration.secondsPerHour,
                                 radius: courseProgress, 
                                 percent: courseCount, progressColor: Colors.blue,
                                                            //   center: const Text('40%', style: TextStyle(fontSize: 8),
                                 
                                 ),
                                 const SizedBox(width: 8,), 
                                  Text(courseProgressNum,style: const TextStyle(fontSize: 16),)
                              ],
                            ),
                         
                             
                           ],
                         ),
                       ),
                      
                     
                   
                 
               );
  }
}

class AddIcon extends StatelessWidget {
  const AddIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle, 
        color: Colors.greenAccent
      ),
      child: const Icon(Icons.add, color: Colors.black,),
    );
  }
}

class DailyScheduleCardT extends StatelessWidget {
  const DailyScheduleCardT({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
       width: 380,
                height: 420, 
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
                    const SizedBox(height: 1,), 
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
                    const SizedBox(height: 1,), 

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
                    const SizedBox(height: 1,), 
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
                    const SizedBox(height: 1,), 
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

class DailyScheduleTrailing extends StatelessWidget {
  const DailyScheduleTrailing({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        
      },
      child: Container(
        width: 30, height: 30, 
        decoration: BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(8)),
        child: const Icon(Icons.arrow_forward_ios, 
        size: 15,
        color: Colors.black,),
      ),
    );
  }
}

class NewCourseTitle extends StatelessWidget {
  const NewCourseTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
     //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        titleHeader( title: 'New Courses'),
       // SizedBox(width: 100,), 
       Spacer(flex: 1,),
        Text('View All', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w100),), 
        SizedBox(width: 2,), 
      ],
    );
  }
}

class SubjectCard3 extends StatelessWidget {
  const SubjectCard3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      height: 160, 
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
        padding: const EdgeInsets.all(22.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        
            // Top layer. 
            Row(
              children: [
    
                // Course Image
                Container(
                  width: 46,
                   height: 46,
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
                     wordSpacing: 2.0 ),), 
                    SizedBox(height: 2,), 
                    Text('23 Lessons', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w100),)
                  ],
                )
              ],
            ), 
    
    const SizedBox(height: 20,), 
            // Bottom Layer
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Type', style: TextStyle(color: Colors.grey),), 
                Text('Software Dev', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)
              ],
            )
          ],
          
        ),
      ),
    );
  }
}

class SubjectCard2 extends StatelessWidget {
  const SubjectCard2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      height: 160, 
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
        padding: const EdgeInsets.all(22.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        
            // Top layer. 
            Row(
              children: [
    
                // Course Image
                Container(
                  width: 46,
                   height: 46,
                  decoration: const BoxDecoration(
                    color: Colors.greenAccent, 
                  shape: BoxShape.circle, 
                  ),
                  child: Padding( 
                    padding: const EdgeInsets.all(10),
                    child: Image.asset('assets/dashboard/icons/photography.png', 
                  ),
                  ),
        
                ), 
                const SizedBox(width: 16,), 
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Photography',
                     style: TextStyle(color: Colors.black, 
                     fontWeight: FontWeight.bold,
                     wordSpacing: 2.0 ),), 
                    SizedBox(height: 2,), 
                    Text('8 Lessons', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w100),)
                  ],
                )
              ],
            ), 
    
    const SizedBox(height: 20,), 
            // Bottom Layer
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Type', style: TextStyle(color: Colors.grey),), 
                Text('Arts and Design', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)
              ],
            )
          ],
          
        ),
      ),
    );
  }
}

class SubjectCard1 extends StatelessWidget {
  const SubjectCard1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      height: 160, 
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
        padding: const EdgeInsets.all(22.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        
            // Top layer. 
            Row(
              children: [
    
                // Course Image
                Container(
                  width: 46,
                   height: 46,
                  decoration: const BoxDecoration(
                    color: Colors.pinkAccent, 
                  shape: BoxShape.circle, 
                  ),
                  child: Padding( 
                    padding: const EdgeInsets.all(10),
                    child: Image.asset('assets/dashboard/icons/copy-writing.png', 
                  ),
                  ),
        
                ), 
                const SizedBox(width: 16,), 
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Content Writing',
                     style: TextStyle(color: Colors.black, 
                     fontWeight: FontWeight.bold,
                     wordSpacing: 2.0 ),), 
                    SizedBox(height: 2,), 
                    Text('12 Lessons', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w100),)
                  ],
                )
              ],
            ), 
    
    const SizedBox(height: 20,), 
            // Bottom Layer
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Type', style: TextStyle(color: Colors.grey),), 
                Text('Data Research', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)
              ],
            )
          ],
          
        ),
      ),
    );
  }
}

class titleHeader extends StatelessWidget {
  const titleHeader({
    Key? key,
    required this.title,
  }) : super(key: key);

final String title; 
  @override
  Widget build(BuildContext context) {
    return  Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),);
  }
}
