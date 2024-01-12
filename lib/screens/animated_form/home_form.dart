import 'dart:ffi';

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';
import 'package:fluttertoast/fluttertoast.dart';

class Home_Form extends StatefulWidget {
  const Home_Form({super.key});

  @override
  State<Home_Form> createState() => _Home_FormState();
}

class _Home_FormState extends State<Home_Form> with TickerProviderStateMixin{
  late AnimationController controller1; 
  late AnimationController controller2; 
  late Animation<double> animation1; 
  late Animation<double> animation2; 
  late Animation<double> animation3; 
  late Animation<double> animation4; 

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller1 = AnimationController(vsync: this, duration: Duration(seconds: 5, 
    )); 
    animation1 = Tween<double>(begin: .1, end: .15).animate(CurvedAnimation(parent: controller1, curve: Curves.easeInOut, 
    ), 
    ) 
    ..addListener(() {
      setState(() {
        
      });
    

      })
      ..addStatusListener((status) {
        if (status == 
        AnimationStatus.completed) {
          controller1.reverse(); 
        } 
        else if (status ==
         AnimationStatus.dismissed) {
          controller1.forward(); 
        }
       });
       animation2 = Tween<double>(begin: .02, end: .04 ).animate(CurvedAnimation(parent: controller1, curve: Curves.easeInOut, 
       ), 
       )..addListener(() {
        setState(() {
        });
        }); 
        controller2 = AnimationController(vsync: this, duration: Duration(seconds: 5)); 

        animation3 = Tween<double> (begin: .41, end: .38).animate(CurvedAnimation(parent: controller2, curve: Curves.easeInOut))
        ..addListener(() {
          setState(() {
          
        });
        })
        ..addStatusListener((status) {
          if (status == AnimationStatus.completed) {
            controller2.reverse(); 
          } else if (status == AnimationStatus.dismissed) {
            controller2.forward(); 
          }
        }); 
        animation4 = Tween<double>(begin: 170, end: 190).animate(CurvedAnimation(parent: controller2, curve: 
        Curves.easeInOut, 
        ), 
        )..addListener(() {
          setState(() {
            
          });
        });
        Timer(Duration(milliseconds: 2500),  () {
          controller1.forward(); 
         }); 
         controller2.forward(); 
      
    }
    @override  
    void dispose() {
      controller1.dispose(); 
      controller2.dispose(); 
    // TODO: implement dispose
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of
        (context).size;
    return Scaffold(
      backgroundColor: const Color(0xff192028), 
      body: ScrollConfiguration(
        behavior: MyBehavior(),
        child: SizedBox(
          height: size.height,
        child: Stack(
          children: [
            Positioned(
              top: size.height * 
              (animation2.value + .58),
              left: size.width * .21,
              child: CustomPaint(
                painter: MyPainter(50),
              ), 
            ), 
            Positioned(
              top: size.height * .98, 
            
              left: size.width * .1,
              child: CustomPaint(
                painter:
                 MyPainter(animation4.value - 30),
              ), 
            ),
            Positioned(
              top: size.height * .5, 
              
              left: size.width * (animation2.value + .8), 
              
              child: CustomPaint(
                painter: MyPainter(30),
              ), 
            ),
            Positioned(
              top: size.height * 
              animation3.value, 
              left: size.width * (animation1.value + .1), 
              child: CustomPaint(
                painter: MyPainter(60),
              ), 
            ),
            Positioned(
              top: size.height * 
              .1, 
              left: size.width * .8, 
              child: CustomPaint(
                painter: MyPainter(animation4.value),
              ), 
            ),
            Column(
                children: [
                  Expanded(
                    flex:5, 
                     child: Padding(padding: const EdgeInsets.only(
                      top: size.height * .1),
                      child: Text('App Name', style: TextStyle(color: Colors.white.withOpacity(.7), 
                      fontSize: 30, fontWeight: FontWeight.bold, letterSpacing: 1, wordSpacing: 4, 
                      ),),)), 
                      Expanded(
                        flex: 7,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            
component1(Icons.account_circle_outlined, 'User Name...', false, false), component1(Icons.email_outlined, 'Email..', false, true), 
Row(
  mainAxisAlignment: MainAxisAlignment.center, 
  children: [
    component2('Login', 2.58, () {HapticFeedback.lightImpact(); Fluttertoast.showToast(msg: 'Login Button Pressed'); 
    }), 
    SizedBox(width: size.width / 20), 
    component2('Forgotten password!', 2.58, (){HapticFeedback.lightImpact(); Fluttertoast.showToast(msg: 'Forgotten password pressed'); 
    })
  ],
)
                          ],
                          )), 
                          Expanded(
                            flex: 6,
                            child: Column(
                              children: [
                                component2('Create a new account', 2, () {
                                  HapticFeedback.lightImpact(); Fluttertoast.showToast(msg: 'Create a new account '); 
                                }), 
                                SizedBox(height: size.height * .05,), 
                                ],))
                ],
            )
          ],
        ),)),
    );
  }



class MyBehavior extends ScrollBehavior {
  @override 
  Widget buildViewportChrome(
    BuildContext context, 
    Widget child,
     AxisDirection axisDirection) {
    return child;
  }
}

class MyPainter extends CustomPainter {
  final double radius; 

  MyPainter(this.radius); 

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
    ..shader = const LinearGradient(
      colors: [Color(0xffFD5E3D), 
    Color(0xffC43990)],
    begin: Alignment.topLeft, 
    end: Alignment.bottomLeft)
    .createShader(Rect.fromCircle(center: Offset(0, 0), radius: radius));

    canvas.drawCircle(Offset.zero, radius, paint); 
  }
  @override 
  bool shouldRepaint(covariant CustomPainter oldDelegate) 
  {
    return true; 
  }
}

Widget component1(IconData icon, String hintText, bool isPassword, bool isEmail){
  Size size = MediaQuery.of(context).size; 
  return ClipRRect(borderRadius: BorderRadius.circular(15),
  child: BackdropFilter(
    filter: ImageFilter.blur(sigmaY: 15, sigmaX: 15, 
    ), 
    child: Container(
      height: size.width / 8, 
      width: size.width / 1.2, 
      alignment: Alignment.center,
       padding: const EdgeInsets.only(
        right: size.width / 30), 
        decoration: BoxDecoration(color: Colors.white.withOpacity(.05), 
        borderRadius: BorderRadius.circular(15),
         ), 
         child: TextField(
          style: TextStyle(color: Colors.white.withOpacity(.8)),
      cursorColor: Colors.white, obscureText: isPassword, keyboardType: isEmail ? TextInputType.emailAddress: TextInputType.text, 
      decoration: InputDecoration(
        prefixIcon: Icon(icon, 
        color: Colors.white.withOpacity(.7),
      ), 
      border: InputBorder.none, 
      hintText: hintText,
       hintStyle: TextStyle(
        color: Colors.white.withOpacity(.5),
       fontSize: 14),
    ),),)));
}

Widget component2(String string, double Width, VoidCallback voidCallback) {
  Size size = MediaQuery.of(context).size; 
  return ClipRRect(
    borderRadius: BorderRadius.circular(15), child: BackdropFilter(filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
    child: InkWell(
      highlightColor: Colors.transparent, 
      splashColor: Colors.transparent, onTap: voidCallback, 
    child: Container(
      height: size.width / 8,
       width: size.width / width, 
       alignment: Alignment.center, 
       decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05), borderRadius: BorderRadius.circular(15),
         ),
          child: Text(string,
           style: TextStyle(
            color: Colors.white.withOpacity(.8)),
    ),),),),
  );
}
