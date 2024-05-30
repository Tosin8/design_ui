import 'package:flutter/material.dart';

class DashboardHome extends StatefulWidget {
  const DashboardHome({super.key});

  @override
  State<DashboardHome> createState() => _DashboardHomeState();
}

class _DashboardHomeState extends State<DashboardHome> {
  @override
  Widget build(BuildContext context) {

//BREAKPOINT:
      bool isDesktop(BuildContext context) => MediaQuery.of(context).size.width >= 600;
       bool isMobile(BuildContext context) => MediaQuery.of(context).size.width < 600;
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return  Scaffold( 

      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: isDesktop(context) ? const Text('Desktop') :
        const Text('Mobile'),
         centerTitle: true,
      ),

      // KNOWING THE NUMBER SIZE: 
      // body: Center(
      //   child: Text('$screenHeight, $screenWidth'), 
      // ), 

      body: Row(
        children: [
          if(isDesktop(context))
          Container(
            width: 200 , 
            height: screenHeight,
            color: Colors.blue,
            child: const Center(child: Text('SIDEBAR')),
          ),
          Expanded(
          
            child: Container(
              width: screenWidth , 
              height: screenHeight,
              color: Colors.red,
              child: const Center(child: Text('CONTENT'),),
            ),
          ),
        ],
      )

    );
  }
}