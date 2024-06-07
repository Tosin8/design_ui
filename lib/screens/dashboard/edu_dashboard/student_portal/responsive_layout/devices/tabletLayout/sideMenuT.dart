// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SideMenuT extends StatefulWidget {
  const SideMenuT({super.key});

  @override
  State<SideMenuT> createState() => _SideMenuTState();
}

class _SideMenuTState extends State<SideMenuT> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        // width: MediaQuery.of(context).size.width, 
        // height: MediaQuery.of(context).size.height,
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

              const SizedBox(height: 100,),
             
             // Ai Corner. 
              Stack(
                clipBehavior: Clip.none,
                children:[ 
                  
                  Container(
                  width: 200, height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: Colors.yellowAccent, 
                  boxShadow: [
                  BoxShadow(
                    //color: Colors.grey.shade500,
                    color: Colors.yellowAccent.shade400,
                    offset: const Offset(2.0, 2.0), 
                    blurRadius: 15.0,
                    spreadRadius: 1.0,  
                  ), 
                  const BoxShadow(
                    color: Colors.white,
                    //color: Colors.yellowAccent, 
                    offset: Offset(-2.0, -2.0), 
                    spreadRadius: 1.0,  
                    blurRadius: 15.0, 
                  ),
                ],
               
                  ), 
                  child: const Padding(
                    padding: EdgeInsets.all(12.0),
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
                      child: Image.asset('assets/dashboard/icons/bot.png',
                       )),
                 ),
              ]  ), 
            ],
          ),
        ),
        ),
    );
  }
}

class NavMenu extends StatefulWidget {
  NavMenu({
    Key? key,
    //required this.index,
    required this.title,
    required this.iconLeading,
   
    required this.onTap, 
  }) :  super(key: key);
//final int index; 

final String title; 
GestureTapCallback onTap; 
final IconData iconLeading; 

  @override
  State<NavMenu> createState() => _NavMenuState();
}

class _NavMenuState extends State<NavMenu> {

  bool  _selectedIndex = false;
  @override
  Widget build(BuildContext context) {
    

    return Padding(
      padding: const EdgeInsets.only(left: 2.0),
      child: Container( 
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), 
        color: _selectedIndex ? Colors.white : Colors.transparent),
        child: InkWell(
        hoverColor: Colors.yellow,
        
          //onTap: widget.onTap, 
        
          child: ListTile(
            onTap: () {
              _selectedIndex =!_selectedIndex; 
            },
            splashColor: Colors.blue,
            hoverColor: Colors.yellow,
            selectedColor: Colors.yellow,
            leading: Icon(widget.iconLeading, 
            color: _selectedIndex ?  Colors.white: Colors.yellow),
            title: Text(widget.title,style: const TextStyle(color: Colors.white),),
         
          
          ),
        ),
      ),
    );
  }
}
