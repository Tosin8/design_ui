import 'package:flutter/material.dart';

class PwdValid extends StatefulWidget {
  const PwdValid({super.key});

  @override
  State<PwdValid> createState() => _PwdValidState();
}

class _PwdValidState extends State<PwdValid> {
 bool _ispwd8chars = false; 
 bool _haspwd1no = false; 
  bool _isPwdMatch = false; 
   bool _isvisible = false; 
     String _password = ''; 
      String _repeatPassword = ''; 

   
   onPwdChanged(String password){
    final numericRegex = RegExp(r'[0-9]'); 
    setState(() {

      // FOR WITHOUT REPEAT PASSWORD
      // _ispwd8chars = false; 
      // if(password.length >= 8) 
      // _ispwd8chars = true;
      // _haspwd1no = false; 
      // if(numericRegex.hasMatch(password)) 
      // _haspwd1no = true; 

       _ispwd8chars = password.length >= 8;
      _haspwd1no = numericRegex.hasMatch(password);
      _password = password;
      _isPwdMatch = _password == _repeatPassword && _repeatPassword.isNotEmpty;
    });
   }

    onRepeatPwdChanged(String repeatPassword) {
    setState(() {
      _repeatPassword = repeatPassword;
      _isPwdMatch = _password == _repeatPassword && _repeatPassword.isNotEmpty;
    });
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold( 
      body: SingleChildScrollView(
        child: Container(
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
                  onChanged: (password) => onPwdChanged(password),
                  obscureText: !_isvisible,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: (){
                      setState(() {
                        _isvisible = !_isvisible; 
                      });
                    },
                     icon: _isvisible ?  const Icon(Icons.visibility, color: Colors.black,) : const Icon(Icons.visibility_off, color: Colors.grey,)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10), 
                      borderSide:  const BorderSide(color: Colors.black)
                    ), 
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.green, width: 1.8), 
                    ),
                    hintText: 'Password', 
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20), 
                  ),
                ) , 
                const SizedBox(height: 20,), 
                   TextField(
                  onChanged: (repeatPassword) => onRepeatPwdChanged(repeatPassword),
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.black),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.green, width: 1.8),
                    ),
                    hintText: 'Repeat Password',
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  ),
                ),
                const SizedBox(height: 20,),
                Row(
                  children: [
                    AnimatedContainer(
                      duration: const Duration(
                        milliseconds: 500),
                       width: 20,
                        height: 20,
                     decoration: BoxDecoration(
                      color: _ispwd8chars ? Colors.green : Colors.transparent,
                      border: _ispwd8chars ? Border.all(color: Colors.transparent):   Border.all(
                        color: Colors.grey.shade400),
                       borderRadius: BorderRadius.circular(50)),
                       child: const Center(child: Icon(Icons.check, color: Colors.white, size: 15),),
                       ), 
                       const SizedBox(width: 10,), 
                       const Text('Contains at least 8 characters', style: TextStyle(color: Colors.black, fontSize: 16),),
                  ],
                ), 
                const SizedBox(height: 10,), 
                 Row(
                  children: [
                    AnimatedContainer(
                      duration: const Duration(
                        milliseconds: 500),
                       width: 20,
                        height: 20,
                     decoration: BoxDecoration(
                      color: _haspwd1no ? Colors.green : Colors.transparent,
                      border: _haspwd1no ? Border.all(color: Colors.transparent):   Border.all(
                        color: Colors.grey.shade400),
                       borderRadius: BorderRadius.circular(50)),
                       child: const Center(child: Icon(Icons.check, color: Colors.white, size: 15),),
                       ), 
                       const SizedBox(width: 10,), 
                       const Text('Contain at least 1 number', style: TextStyle(color: Colors.black, fontSize: 16),),
                      
                       
                  ],
                ),const SizedBox(height: 10),
               Row(
                children: [
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 500),
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: _isPwdMatch ? Colors.green : Colors.transparent,
                      border: _isPwdMatch
                          ? Border.all(color: Colors.transparent)
                          : Border.all(color: Colors.grey.shade400),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Center(
                      child: Icon(Icons.check, color: Colors.white, size: 15),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    _isPwdMatch
                        ? 'Passwords match'
                        : 'Passwords don\'t match, check again',
                    style: TextStyle(
                      color: _isPwdMatch ? Colors.black : Colors.red,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              
                 const SizedBox(height: 40,), 
                       GestureDetector(
                         onTap: (){ if (_isPwdMatch && _ispwd8chars && _haspwd1no) {
                      // Proceed with account creation
                    } else {
                      // Show error
                    }}, 
                         child: Container(
                          width: double.infinity, 
                          height: 50, 
                          decoration: const BoxDecoration(color: Colors.black, borderRadius: BorderRadius.all(Radius.circular(10))), child: const Center(child: Text('Create Account', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),)),
                         )
                       )
              ],
            ),
          ),
        ),
      ), 
    );
  }
}