// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:ui_design/screens/dashboard/edu_dashboard/student_portal/boards/middle_cards/user_card.dart';

class MiddleScreen extends StatefulWidget {
  const MiddleScreen({super.key});

  @override
  State<MiddleScreen> createState() => _MiddleScreenState();
}

class _MiddleScreenState extends State<MiddleScreen> {

  String _dropdownvalue = 'Weekly'; 
  final _items = [
    'Weekly', 
    'Monthly', 
    'Yearly'
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
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
                    width: 380,
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
                          )
                       ,
       
                       // flchart. 
                    // BarChartSample1 
                        ], 
                    ), 
                    ), 
                    ), 
                    
                     

        const DailyScheduleCard(),            
            ]
              ), 
     
     ], 
     ),) 
     ]));
 
  }
}

class DailyScheduleCard extends StatelessWidget {
  const DailyScheduleCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
       width: 380,
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
                child: const Column(
                  children: [
                  titleHeader(title: 'Daily Schedule')
                  ],
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
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        titleHeader( title: 'New Courses'),
        Text('View All', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w100),)
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
                Text('Softwared Dev', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)
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
    return  Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.grey),);
  }
}
