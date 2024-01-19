import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

import 'secondScreen.dart';

const double _fabDimension = 56.0; 

class OpenContainerTransform extends StatelessWidget {
  const OpenContainerTransform({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu, color: Colors.white,)),
        title: const Text('Inbox', style: TextStyle(color: Colors.white),), 
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search, color: Colors.white,)), 
           IconButton(onPressed: (){}, icon: Icon(Icons.menu, color: Colors.white,)),
        ],
      ),
      floatingActionButton: OpenContainer(
      
        openBuilder: (_, __) => SecondScreen(),
        closedElevation: 6.0,
        closedShape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(_fabDimension / 2)), 
        ),
        closedColor: Theme.of(context).colorScheme.secondary,
        closedBuilder: (BuildContext context, _) => 
        SizedBox(height: _fabDimension, width: _fabDimension, child: Center(child: Icon(Icons.add, color: Theme.of(context).colorScheme.onSecondary),),)
        ),
        body: ListView(),
         
    );
  }
}