import 'package:flutter/material.dart';
import 'package:flutter_paystack/flutter_paystack.dart'; 

class PaymentApi extends StatefulWidget {
  const PaymentApi({super.key});

  @override
  State<PaymentApi> createState() => _PaymentApiState();
}

class _PaymentApiState extends State<PaymentApi> {
  final _formKey = GlobalKey<FormState>(); 
  TextEditingController amountController = TextEditingController(); 
  TextEditingController emailController = TextEditingController();

  String publicKey = 'sk_test_4022a9a91a9fb0fece157832994253076af5e9df'; 
  final plugin = PaystackPlugin(); 
  String message = '';
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
            Form
            
            (
              key: _formKey, 

              child: 
            
            
            Column(
              children: [
                TextFormField(
                  controller: emailController,
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
                  controller: amountController,
              validator: (value) {
                if(value == null ||value.isEmpty){
                  return 'Enter your amount'; 
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