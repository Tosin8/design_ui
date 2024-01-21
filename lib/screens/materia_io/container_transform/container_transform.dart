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
        leading: IconButton(
          onPressed: (){}, 
          icon: const Icon(Icons.menu, 
          color: Colors.white,)),
        title: const Text('Inbox', style: TextStyle(color: Colors.white),), 
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.search, color: Colors.white,)), 
           PopupMenuButton(
            color: Colors.white,
            surfaceTintColor: Colors.white,
              itemBuilder: (BuildContext context) =>
                [
                  PopupMenuItem(
                    child: GestureDetector(
                      onTap: (){}, 
                    
                    child: const Text('Schedule Send'))), 
                    PopupMenuItem(
                    child: GestureDetector(
                      onTap: (){}, 
                    
                    child: const Text('Add from Contacts'))),
                    PopupMenuItem(
                    child: GestureDetector(
                      onTap: (){}, 
                    
                    child: const Text('Save drafts'))), 
                    PopupMenuItem(
                    child: GestureDetector(
                      onTap: (){}, 
                    
                    child: const Text('Discard'))), PopupMenuItem(
                    child: GestureDetector(
                      onTap: (){}, 
                    
                    child: const Text('Settings'))), PopupMenuItem(
                    child: GestureDetector(
                      onTap: (){}, 
                    
                    child: const Text('Help and Feedback')))
                ], 
            
              
               
             ) 
        ],
      ),
      floatingActionButton: OpenContainer(
      
        openBuilder: (_, __) => const SecondScreen(),
        closedElevation: 6.0,
        closedShape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(_fabDimension / 2)), 
        ),
        closedColor: Theme.of(context).colorScheme.secondary,
        closedBuilder: (BuildContext context, _) => 
        SizedBox(height: _fabDimension, width: _fabDimension, child: Center(child: Icon(Icons.create, color: Theme.of(context).colorScheme.onSecondary),),)
        ),
        body: ListView(
          children:const [
            Text('Today', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),)
          ],
        ),
         
    );
  }
}