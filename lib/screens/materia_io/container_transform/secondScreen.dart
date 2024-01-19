import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
       
      ),
      body: Padding( 
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children:const  [
            TextField(
      decoration: InputDecoration(
        hintText: 'Mail Sender',
        labelText: 'From'
    
      ),
    ), 
            TextField(
              decoration: InputDecoration(
                hintText: 'Receipent',
                labelText: 'Receipent'
        
              ),
            ), 
             TextField(
              decoration: InputDecoration(
                hintText: 'Subject',
                labelText: 'Subject'
        
              ),
            ), 
            TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Compose',
                labelText: 'Compose', 
                
      
              ),
              
            ), 
          ]),
      ),
    );
  }
}

