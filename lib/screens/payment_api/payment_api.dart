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
        padding:  const EdgeInsets.all(15.0),
        child: Column(
        
          children: [
            Form(child: 
            
            
            Column(
              children: [
                TextFormField(
                  validator: (value) {
                    if(value == null ||value.isEmpty){
                      return 'Enter your email'; 
                    }
                    return null;
                  
                    
                  },
                  decoration: const InputDecoration(
                    hintText: 'Input Amount', 
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.zero)
                    )
                  ),
                ),

                const SizedBox(height: 20,), 
                TextFormField(
              validator: (value) {
                if(value == null ||value.isEmpty){
                  return 'Enter your email'; 
                }
                return null;
              
                
              },
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: const InputDecoration(
                hintText: 'Input Email', 
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.zero)
                )
              ),
            ) ,
              ],
            ) , 


            
                       ), 
                       const SizedBox(height: 20,), 
                       ElevatedButton(onPressed: (){}, child: const Text('Make Payment Now'))
          ],
        ),
      )
    );
  }
}