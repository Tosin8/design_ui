import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';

class OTP1 extends StatefulWidget {
  const OTP1({super.key});

  @override
  State<OTP1> createState() => _OTP1State();
}

class _OTP1State extends State<OTP1> {

 bool _isResend = false;
  bool _isVerified = false; 
 bool _isLoading = false; 

final String _code = ''; 
late Timer _timer; 
 int _start = 60; 

void resend() {
  setState(() {
   _isResend = !_isResend;
  //_isResend = true; 
  
  });

  const oneSec = Duration(seconds: 1); 
  _timer = Timer.periodic(oneSec, (timer) {
    setState(() {
      if (_start == 0) {
        _start = 60; 
        _isResend = false; 
        timer.cancel(); 
      } else {
        _start--; 
      }
    });
  });
}


verify() {
  setState(() {
    _isLoading = !_isLoading;

  });

  const oneSec = Duration(milliseconds: 10000); 
  _timer = Timer.periodic(oneSec, (timer) {
    setState(() {
      _isLoading = false; 
      _isVerified = true; 
    });
  }); 
}

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: Container(
        child:  Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          SizedBox(
               
            
            
            child: Image.asset('assets/otp/phone.png'),
            ), 
                const SizedBox(height: 30,), 
                const Text('Verify Your Phone Number', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),), 
                const SizedBox(height: 20,), 
            const Text('Please enter the 6 digits \ncode sent to +91 9999999999', textAlign: TextAlign.center, 
            style: TextStyle(
              color: Colors.grey, fontSize: 16),), 
              const SizedBox(height: 30,), 
              VerificationCode(
                length: 6, 
                keyboardType: TextInputType.number, 
                underlineColor: Colors.grey, 
                underlineUnfocusedColor: Colors.grey, 
                onCompleted: (String value) {
                  print(value);
                },
                onEditing: (bool value) {
                  print(value);
                },), 
                const SizedBox(height: 20,), 
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    
                    const Text('Didn\'t not receive the code?',
                    style: TextStyle(color: Colors.grey, fontSize: 16),),
                    const SizedBox(width: 8,), 
                     GestureDetector( 
                      onTap: () {
                       if(_isResend) return; 
                       resend(); 
                      },
                       child:  Text(
                        _isResend ? 'Try Again in $_start' : 'Resend',
                                           style: const TextStyle(color: Colors.blue, fontSize: 16),),
                     ),
                  ],
                ), 
                const SizedBox(height: 40), 
                GestureDetector( 
                  onTap: _code.length < 6 ? null : ()
                    {verify(); }, 
                  
                  child: Container(
                    width: double.infinity, height: 60,
                    decoration: const BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.all(Radius.circular(10))),
                  child:  Center(child:
                  _isLoading ? const SizedBox(
                    width: 20, height: 20, 
                    child: CircularProgressIndicator(
                      backgroundColor: Colors.white, 
                      strokeWidth: 3, 
                      color: Colors.black
                      ),
                  ) : _isVerified ? const Icon(Icons.check_circle, color: Colors.white, size: 30) : 
                   const Text('Verify', style: TextStyle(color: Colors.white, fontSize: 20), textAlign: TextAlign.center,)),
                    ),
                ),
                
            ],
          ),
        ),
      ),
    );
  }
}