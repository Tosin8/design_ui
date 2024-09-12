import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';

class OTP1 extends StatelessWidget {
  const OTP1({super.key});

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
                        print('button tapped');
                      },
                       child: const Text('Resend',
                                           style: TextStyle(color: Colors.blue, fontSize: 16),),
                     ),
                  ],
                ), 
                const SizedBox(height: 40), 
                Container(
                  width: double.infinity, height: 60,
                  decoration: const BoxDecoration(
color: Colors.black, borderRadius: BorderRadius.all(Radius.circular(10))),
child: const Center(child: Text('Verify', style: TextStyle(color: Colors.white, fontSize: 20), textAlign: TextAlign.center,)),
                  ),
                
            ],
          ),
        ),
      ),
    );
  }
}