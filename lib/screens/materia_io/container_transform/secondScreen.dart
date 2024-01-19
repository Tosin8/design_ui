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
            mailField(), 
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
          ]),
      ),
    );
  }
}

class mailField extends StatefulWidget {
   const mailField({
    super.key,
  });

  @override
  State<mailField> createState() => _mailFieldState();
}

class _mailFieldState extends State<mailField> {
String Text1, Text2; 

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Mail Sender',
        labelText: 'From'
    
      ),
    );
  }
}