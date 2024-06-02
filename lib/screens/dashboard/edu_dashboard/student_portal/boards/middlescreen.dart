// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:ui_design/screens/dashboard/edu_dashboard/student_portal/boards/middle_cards/user_card.dart';

class MiddleScreen extends StatelessWidget {
  const MiddleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
     child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const UserCard(), 
            const SizedBox(height: 15,),

            // 
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                titleHeader( title: 'New Courses'),
                Text('View All', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w100),)
              ],
            ), 
            const SizedBox(height: 10,),

            // Subject Card
            Row(
              children: [
                Container(
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
                ),
                const SizedBox(width: 35,), 

                Container(
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
                ),
                const SizedBox(width: 35,), 
                Container(
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
                ),
            
               
              ],
              
              
              
            ), 

            // Second layer - hours activity and daily schedule. 
            Row(
              children: [
                Expanded(
                  child: Container(
                  child: Column(),
                ))
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
