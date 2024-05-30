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
     return OrientationBuilder(builder: (context, orientation) {
final isPortrait = orientation == Orientation.portrait; 
final isMobile = MediaQuery.of(context).size.shortestSide < 600; 

return Scaffold(
  appBar: AppBar(
    title: const Text(
      'Orientation'), 
      ),
      drawer: isMobile ? Drawer(
        child: Container(
          color: Colors.blue,
      width: 300, child: const Center(child: Text('Sidebar'),),)): null, 
      body: Row(
        children: [
          if(!isMobile) 
          Container(
            color: Colors.blue, 
            width: 300,
            child: const Center(child: Text('Sidebar'),),
          ), 
          Expanded(
            child: GridView.count(
              crossAxisCount: isPortrait ? 2: 3, 
            children: 
              List.generate(40, (index) => Card(color: Colors.orange, child: Center(child: Text('Item $index'),),))
            ),
          ),
        ],
      )
); 

     }); 
    
  }
}