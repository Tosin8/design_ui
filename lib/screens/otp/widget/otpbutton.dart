
import 'package:flutter/material.dart';

class OTPBUTTONS extends StatelessWidget {
  const OTPBUTTONS({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
     children: [
       Expanded(
         child: GestureDetector( 
           onTap: (){},
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
    );
  }
}

