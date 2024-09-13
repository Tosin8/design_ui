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
  void dispose() {
    _timer?.cancel(); // Cancel the timer when the widget is disposed
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
          child:  Padding(
            padding: const EdgeInsets.symmetric(vertical: 80.0, horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Verification Code', style: TextStyle(color: Colors.white, fontSize: 23, fontWeight: FontWeight.bold),), 
                 const SizedBox(height: 8,),
                 const Text('We have sent the code verification to ', style: TextStyle(color: Colors.grey, fontSize: 16, fontWeight: FontWeight.w500),), 
                 const SizedBox(height: 8,), 
                 const Row(
                   children: [
                     Text('+234*******098 ', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
                     SizedBox(width: 10,), 
                      Text('Change phone number? ', style: TextStyle(color: Colors.blue, fontSize: 15, fontWeight: FontWeight.bold, ),),
                   ],
                 ), 
                 const SizedBox(height: 30,), 
                 const OTPFORM(), 
                 const SizedBox(height: 20,), 
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [


              Text(
                _isTimerActive ? 
                'Resend code after ${_timeLeft ~/ 60}:${(_timeLeft % 60).toString().padLeft(2, '0')}' : 'Resend code', style: const TextStyle(color: Colors.grey, fontSize: 16, fontWeight: FontWeight.bold),), 
                  ],
                 ), 
                 const SizedBox(height: 300,),
                 Row(
     children: [
       Expanded(
         child: GestureDetector( 
           onTap: _isTimerActive? null: startTimer,
           child: Container(
             decoration:  BoxDecoration(
               border: Border.all(color: Colors.blue),
              //color: Colors.blue,
               borderRadius: BorderRadius.circular(10), 
             ),
             height: 60,
             width: 200,
             child: const Center(child: Text('Resend', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),)),
           ),
         ),
       ), 
       const SizedBox(width: 10,), 
       Expanded(
         child: GestureDetector( 
           onTap: (){},
           child: Container(
             decoration:  BoxDecoration(
               
               color: Colors.blue,
               borderRadius: BorderRadius.circular(10), 
             ),
             height: 60,
             width: 200,
             child: const Center(child: Text('Confirm', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),)),
           ),
         ),
       ),
     ],
    )
              ],),
          ),),
      )
    ); 
  }
}
