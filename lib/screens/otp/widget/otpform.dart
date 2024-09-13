import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OTPFORM extends StatelessWidget {
  const OTPFORM({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
     child: Row(
       crossAxisAlignment: CrossAxisAlignment.center,
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
    
     SizedBox(
       height: 68, 
     width: 64,
      child: TextFormField(
        onSaved: (pin1) {
          print('pin1: $pin1');
        },
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
       textInputAction: TextInputAction.next,
       decoration:  const InputDecoration(
         fillColor: Colors.white,
         focusedBorder: OutlineInputBorder(
           borderRadius: BorderRadius.all(Radius.circular(20)),
           borderSide: BorderSide(color: Colors.blue),
         ), 
         border: OutlineInputBorder(
           borderRadius: BorderRadius.all(Radius.circular(20)),
           borderSide: BorderSide(color: Colors.white),
       ), 
       ), 
      // style: Theme.of(context).textTheme.titleLarge,
        style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
       keyboardType: TextInputType.number,
       textAlign: TextAlign.center, 
       inputFormatters: [
         LengthLimitingTextInputFormatter(1),
         FilteringTextInputFormatter.digitsOnly,
       ],
       ),
       ), 
            
        SizedBox(
       height: 68, 
     width: 64,
      child: TextFormField(
         onSaved: (pin2) {
          print('pin2: $pin2');
        },
 onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
         textInputAction: TextInputAction.next,
       decoration:  const InputDecoration(
         fillColor: Colors.white,
         focusedBorder: OutlineInputBorder(
           borderRadius: BorderRadius.all(Radius.circular(20)),
           borderSide: BorderSide(color: Colors.blue),
         ), 
         border: OutlineInputBorder(
           borderRadius: BorderRadius.all(Radius.circular(20)),
           borderSide: BorderSide(color: Colors.white),
       ), 
       ), 
       // style: Theme.of(context).textTheme.titleLarge,
         style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
       keyboardType: TextInputType.number,
       textAlign: TextAlign.center, 
       inputFormatters: [
         LengthLimitingTextInputFormatter(1),
         FilteringTextInputFormatter.digitsOnly,
       ],
       ),
       ), 
        SizedBox(
       height: 68, 
     width: 64,
      child: TextFormField(
         onSaved: (pin3) {
          print('pin3: $pin3');
        },
         onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
         textInputAction: TextInputAction.next,
       decoration:  const InputDecoration(
         fillColor: Colors.white,
         focusedBorder: OutlineInputBorder(
           borderRadius: BorderRadius.all(Radius.circular(20)),
           borderSide: BorderSide(color: Colors.blue),
         ), 
         border: OutlineInputBorder(
           borderRadius: BorderRadius.all(Radius.circular(20)),
           borderSide: BorderSide(color: Colors.white),
       ), 
       ), 
      style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
       keyboardType: TextInputType.number,
       textAlign: TextAlign.center, 
       inputFormatters: [
         LengthLimitingTextInputFormatter(1),
         FilteringTextInputFormatter.digitsOnly,
       ],
       ),
       ),  SizedBox(
       height: 68, 
     width: 64,
      child: TextFormField(
         onSaved: (pin4) {
          print('pin4: $pin4');
        },
         onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
         textInputAction: TextInputAction.done,
       decoration:  const InputDecoration(
         fillColor: Colors.white,
         focusedBorder: OutlineInputBorder(
           borderRadius: BorderRadius.all(Radius.circular(20)),
           borderSide: BorderSide(color: Colors.blue),
         ), 
         border: OutlineInputBorder(
           borderRadius: BorderRadius.all(Radius.circular(20)),
           borderSide: BorderSide(color: Colors.white),
       ), 
       ), 
     //  style: Theme.of(context).textTheme.titleLarge,
     style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
       keyboardType: TextInputType.number,
       textAlign: TextAlign.center, 
       inputFormatters: [
         LengthLimitingTextInputFormatter(1),
         FilteringTextInputFormatter.digitsOnly,
       ],
       ),
       )
    ],
    ), 
    );
  }
}