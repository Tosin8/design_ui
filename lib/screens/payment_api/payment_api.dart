import 'package:flutter/material.dart';

class PaymentApi extends StatefulWidget {
  const PaymentApi({super.key});

  @override
  State<PaymentApi> createState() => _PaymentApiState();
}

class _PaymentApiState extends State<PaymentApi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        title: const Text('Make Payment')
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Form(child: 
            
            TextFormField(
              validator: (value) {
                if(value = null ||value.isEmpty){
                  return 'Enter your email'; 
                }
                return null;
              
                
              },
              decoration: const InputDecoration(
                hintText: 'Input Email'
              ),
            ) , 
                       )
          ],
        ),
      )
    );
  }
}