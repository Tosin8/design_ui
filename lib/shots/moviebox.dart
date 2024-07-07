import 'package:flutter/material.dart';

class Moviebox extends StatefulWidget {
  const Moviebox({super.key});

  @override
  State<Moviebox> createState() => _MovieboxState();
}

class _MovieboxState extends State<Moviebox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        title: const Text('Movie Box'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children:   const [
             Text('Hi, Mikky', style: TextStyle(fontSize: 18),), 
          TextField(
            textInputAction: TextInputAction.done,
            keyboardType: TextInputType.name,
  decoration: InputDecoration(
    
    filled: true,
  //  labelText: 'Search',
    prefixIcon: Icon(Icons.search, color: Colors.black),
    hintText: 'Search for movies',
    fillColor: Colors.white, 
  ),

             ), 
             
          ],
        ),
      )
    );
  }
}