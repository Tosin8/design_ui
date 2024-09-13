import 'package:flutter/material.dart';

class otp2 extends StatefulWidget {
  const otp2({super.key});

  @override
  State<otp2> createState() => _otp2State();
}

class _otp2State extends State<otp2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: const Padding(
          padding: EdgeInsets.symmetric(vertical: 80.0, horizontal: 12.0),
          child: Column(
            children: [
              Text('Verification Code', style: TextStyle(color: Colors.white, fontSize: 23, fontWeight: FontWeight.bold),)
            ],),
        ),)
    ); 
  }
}