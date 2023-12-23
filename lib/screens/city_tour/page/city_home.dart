
import 'package:flutter/material.dart';

import '../extension/city_location.dart';

class CityHome extends StatefulWidget {
  const CityHome({super.key});

  @override
  State<CityHome> createState() => _CityHomeState();
}

class _CityHomeState extends State<CityHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0, 
        backgroundColor: Colors.transparent,
        title: Text('Interests'), 
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],

      ),
     body: CityLocation(), 
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0, 
      //  selectedItemColor: Colors.white,
        // unselectedItemColor: Colors.white54,
        // backgroundColor: Colors.transparent, 
        // showSelectedLabels: false, 
        // showUnselectedLabels: false,

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.pin_drop_outlined),
            label: '', 
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_location),
             label: '', 
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_outlined),
             label: '', 
            
          ),
        ]),
    );
  }
}