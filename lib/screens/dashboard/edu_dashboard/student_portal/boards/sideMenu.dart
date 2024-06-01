// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
           color: const Color(0xff000000),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Samyie', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold, wordSpacing: 3.0),), 
              const SizedBox(height: 30,), 

              // nav. bar menu 
              NavMenu(
                title: 'Dashboard', 
                onTap: () {  },
                 iconLeading: (Iconsax.activity
                ), 
              
              ), 
                NavMenu(
                title: 'My Courses', 
                onTap: () {  },
                 iconLeading: (Iconsax.book
                ),
              
              )  ,NavMenu(
                title: 'Inbox', 
                onTap: () {  },
                 iconLeading: (Iconsax.message
                ),
              
              ) , NavMenu(
                title: 'Notifications', 
                onTap: () {  },
                 iconLeading: (Iconsax.notification
                ),
              
              ) , NavMenu(
                title: 'Calendar', 
                onTap: () {  },
                 iconLeading: (Iconsax.calendar
                ),
              
              ),   NavMenu(
                title: 'Community', 
                onTap: () {  },
                 iconLeading: (Iconsax.user
                ),
              
              ) ,  NavMenu(
                title: 'Settings', 
                onTap: () {  },
                 iconLeading: (Iconsax.setting
                ),
              
              ),

              SizedBox(height: 100,),
             
             // Ai Corner. 
              Stack(
                clipBehavior: Clip.none,
                children:[ 
                  
                  Container(
                  width: 200, height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: Colors.yellowAccent, 
                  ), 
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    
                        Text('Ask', style: TextStyle(fontSize: 18),), 
                        SizedBox(height: 10,),
                          Text('Samyie AI', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                         //  SizedBox(height: 12,), 
                            Text('Your Academic Personal Assistant', style: TextStyle(fontSize: 12),), 
                           
                      ],
                    ),
                  ),
                ),
                 Positioned(
                  right: 0, bottom: 100,
                   child: Container(
                      width: 120, height: 120,
                      child: Image.asset('assets/dashboard/bot.png', )),
                 ),
              ]  ), 
            ],
          ),
        ),
        ),
    );
  }
}

class NavMenu extends StatelessWidget {
  NavMenu({
    Key? key,
    //required this.index,
    required this.title,
    required this.iconLeading,
   
    required this.onTap, 
  }) :  super(key: key);
//final int index; 

//int selectedIndex = 0; 
final String title; 
GestureTapCallback onTap; 
final IconData iconLeading; 


//bool  isSelected = selectedIndex == index; 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 2.0),
      child: InkWell(
      hoverColor: Colors.yellow,
      
        onTap: onTap, 
      
        child: ListTile(
          onTap: () {
            
          },
          splashColor: Colors.blue,
          hoverColor: Colors.yellow,
          selectedColor: Colors.yellow,
          leading: Icon(iconLeading, color: Colors.white,),
          title: Text(title,style: const TextStyle(color: Colors.white),),
       
        
        ),
      ),
    );
  }
}
