import 'package:flutter/material.dart';

class PwdValid extends StatefulWidget {
  const PwdValid({super.key});

  @override
  State<PwdValid> createState() => _PwdValidState();
}

class _PwdValidState extends State<PwdValid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: Container(
        width: double.infinity,
        color: Colors.white, 
        child:  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Set a password', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,height: 1.5),), 
              const SizedBox(height: 10,), 
               const Text('Kindly create a secure password \nand include the following criteria. ', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey),), 
              const SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10), 
                    borderSide:  const BorderSide(color: Colors.black)
                  ), 
                  hintText: 'Password', 
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20), 
                ),
              ) 
            ],
          ),
        ),
      ), 
    );
  }
}