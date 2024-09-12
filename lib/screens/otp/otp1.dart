import 'package:flutter/material.dart';

class OTP1 extends StatelessWidget {
  const OTP1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: Container(
        child:  Padding(
          padding: const EdgeInsets.all(80.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          SizedBox(
               
            
            
            child: Image.asset('assets/otp/phone.png'),
            ), 
                const SizedBox(height: 30,),   
            const Text('Please enter the 6 digits code sent to +91 9999999999', textAlign: TextAlign.center, 
            style: TextStyle(color: Colors.grey, fontSize: 16),)
            ],
          ),
        ),
      ),
    );
  }
}