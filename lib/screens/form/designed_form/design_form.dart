import 'package:flutter/material.dart';

class DesignForm extends StatefulWidget {
  const DesignForm({super.key});

  @override
  State<DesignForm> createState() => _DesignFormState();
}

final bkg = const AssetImage('assets/form/1.jpg');
class _DesignFormState extends State<DesignForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: Container(
        width: double.infinity, 
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: bkg, fit: BoxFit.cover)
        ),
        child: Container(
          
        child:  const Padding( 
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              Text("PLANT'D", 
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600, color: Colors.white, letterSpacing: 1, ),),
              SizedBox(height: 20), 
          Text('Let\'s get your plant wet',style: TextStyle(color: Colors.white, fontSize: 20),
          ), 
          SizedBox(height: 20), 
          SignInForm()
            ],
          ),
        ),
        ),
      )
    );
  }
}

class SignInForm extends StatelessWidget {
  const SignInForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(child: Column(
      children: [
        Container(
           height: 55,
          decoration:  BoxDecoration(
             color: Colors.grey.shade200,
             borderRadius: BorderRadius.circular(10), 
          ),
         
         
          child: const Align(
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Enter Email', hintStyle: TextStyle(color: Colors.black),
                prefixIcon: Icon(Icons.email_outlined,)
              )
            ),
          ),
        )
      ],
    ));
  }
}