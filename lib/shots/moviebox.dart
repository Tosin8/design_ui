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
      appBar: AppBar(
        title: Text('Movie Box'),
        centerTitle: true,
      ),
    );
  }
}