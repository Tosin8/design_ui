import 'package:flutter/material.dart';

class DashboardHome extends StatefulWidget {
  const DashboardHome({super.key});

  @override
  State<DashboardHome> createState() => _DashboardHomeState();
}

class _DashboardHomeState extends State<DashboardHome> {
  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return  Scaffold( 

      // KNOWING THE NUMBER SIZE: 
      // body: Center(
      //   child: Text('$screenHeight, $screenWidth'), 
      // ), 

      body: Row(
        children: [
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