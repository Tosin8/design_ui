import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_design/screens/otp/widget/otpbutton.dart';
import 'package:ui_design/screens/otp/widget/otpform.dart';

class otp2 extends StatefulWidget {
  const otp2({super.key});

  @override
  State<otp2> createState() => _otp2State();
}

class _otp2State extends State<otp2> {
Timer? _timer;
  final int _counter = 0;
  bool _isTimerActive = false;
  int _timeLeft = 90; 
void startTimer() {
    setState(() {
      _isTimerActive = true;
    });

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_timeLeft > 0) {
          _timeLeft--; // Decrease the time left every second
        } else {
          _timer?.cancel(); // Stop the timer after 90 seconds
          _isTimerActive = false; // Enable the Resend button again
          _timeLeft = 90; // Reset timer for the next usage
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
          child:  const Padding(
            padding: EdgeInsets.symmetric(vertical: 80.0, horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Verification Code', style: TextStyle(color: Colors.white, fontSize: 23, fontWeight: FontWeight.bold),), 
                 SizedBox(height: 8,),
                 Text('We have sent the code verification to ', style: TextStyle(color: Colors.grey, fontSize: 16, fontWeight: FontWeight.w500),), 
                 SizedBox(height: 8,), 
                 Row(
                   children: [
                     Text('+234*******098 ', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
                     SizedBox(width: 10,), 
                      Text('Change phone number? ', style: TextStyle(color: Colors.blue, fontSize: 15, fontWeight: FontWeight.bold, ),),
                   ],
                 ), 
                 SizedBox(height: 30,), 
                 OTPFORM(), 
                 SizedBox(height: 20,), 
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Resend code after', style: TextStyle(color: Colors.white),)
                  ],
                 ), 
                 SizedBox(height: 300,),
                 OTPBUTTONS()
              ],),
          ),),
      )
    ); 
  }
}
