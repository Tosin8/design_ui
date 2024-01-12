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
      body: SingleChildScrollView(
        child: Container(
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
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Enter Email', hintStyle: TextStyle(color: Colors.black),
                prefixIcon: Icon(Icons.email_outlined,)
              )
            ),
          ),
        ), 
        const SizedBox(height: 20), 
        Container(
           height: 55,
          decoration:  BoxDecoration(
             color: Colors.grey.shade200,
             borderRadius: BorderRadius.circular(10), 
          ),
         
         
          child: const Align(
            child: TextField(
              obscureText: true,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.always,
                border: InputBorder.none,
                
                hintText: 'Enter Password', hintStyle: TextStyle(color: Colors.black),
                prefixIcon: Icon(Icons.key,)
              )
            ),
          ),
        ), 
        const SizedBox(height: 20), 
        Row(
          children: [
            Checkbox(value: false, onChanged: (value) {}, checkColor: Colors.white,),
            const Text('Remember me', 
            style: TextStyle(color: Colors.white, fontSize: 16),),
            const SizedBox(width: 70), 
             Expanded(
              child: GestureDetector(
                onTap: () {
                  
                },
                child: const Text('Forgot Password', 
                style: TextStyle(
                  color: Colors.white, fontSize: 15, 
                
                decorationStyle: TextDecorationStyle.double,
                 decoration: TextDecoration.underline,),
                            ),
              ))
          ],
        ), 
        const SizedBox(height: 30),
        SignInBtn(btntitle: 'Sign In',), 
        const SizedBox(height: 20), 
        const Text('- OR - ', style: TextStyle(color: Colors.white, fontSize: 16),), 
        const SizedBox(height: 10), 
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 100.0),
           child: Row(
            
            children: [
              Image.asset('assets/social_net/1.png'), 
              Image.asset('assets/social_net/2.png'), Image.asset('assets/social_net/3.png'), 
            ],
            ),
         ),
         SizedBox(height: 20), 
      
        const Center(child: Text('Create Account', style: TextStyle(color: Colors.white, fontSize: 18),),)

      ],
    ));
  }
}

class SignInBtn extends StatelessWidget {

  
  SignInBtn({required this.btntitle, 
    super.key,
  });

 String  btntitle; 

  @override
  
  Widget build(BuildContext context) {
    
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 60,
        width: 180,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
          
          color: Colors.blueAccent.shade200),
          child:  Align(child: Text(btntitle, style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),)),),
    );
  }
}