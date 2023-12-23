
import 'package:flutter/material.dart';

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
     // body: LocationWidget(), 
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '', 
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
             label: '', 
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
             label: '', 
            
          ),
        ]),
    );
  }
}