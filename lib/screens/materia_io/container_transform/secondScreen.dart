import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: (){},
             icon: const Icon(Icons.attach_file)), 
              IconButton(
            onPressed: (){},
             icon: const Icon(Icons.send)),
             PopupMenuButton(
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
       
      
      body: Padding( 
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children:const  [
            TextField(
      decoration: InputDecoration(
        hintText: 'Mail Sender',
        labelText: 'From',
    
      ),
      maxLines: 1, maxLength: 30,
    ), 
            TextField(
              decoration: InputDecoration(
                hintText: 'Receipent',
                labelText: 'Receipent'
              ),
              textInputAction: TextInputAction.next,
              maxLines: 1, maxLength: 30,
            ), 
             TextField(
              decoration: InputDecoration(
                hintText: 'Subject',
                labelText: 'Subject'
              ), maxLines: 1, maxLength: 30,textInputAction: TextInputAction.next,
            ), 
            TextField(
              decoration: InputDecoration(
               // border: InputBorder.none,
                hintText: 'Compose',
                labelText: 'Compose', 
              ),
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.multiline,
              maxLines: null,
             
                
              
            ), 
          ]),
      ),
    );
  }
}

