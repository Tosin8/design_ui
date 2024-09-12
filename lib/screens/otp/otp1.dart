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
                const Text('Verify Phone', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),), 
                const SizedBox(height: 20,), 
            const Text('Please enter the 6 digits code sent to +91 9999999999', textAlign: TextAlign.center, 
            style: TextStyle(
              color: Colors.grey, fontSize: 16),), 
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
            ],
          ),
        ),
      ),
    );
  }
}