// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class PaymentButton extends StatelessWidget {
  const PaymentButton({
    Key? key,
    required this.text,
    this.onTap,
  }) : super(key: key);

final String text; 
final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector( 
      onTap: onTap,
      child: Container( 
        padding: const EdgeInsets.all(8.0),
        height: 50,
        width: 150,
        decoration: BoxDecoration( 
          borderRadius: BorderRadius.circular(8),
          color: Colors.black, 
        ),
        child:  Align(child: Text(text, 
        
        style: TextStyle(
          letterSpacing: 1.0,
          color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500),)),
      ),
    );
  }
}
