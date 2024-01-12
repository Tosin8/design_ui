import 'package:flutter/material.dart';

class Home_Form extends StatefulWidget {
  const Home_Form({super.key});

  @override
  State<Home_Form> createState() => _Home_FormState();
}

class _Home_FormState extends State<Home_Form> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of
        (context).size;
    return Scaffold(
      backgroundColor: Color(0xff192028), 
      body: ScrollConfiguration(
        behavior: MyBehavior(),
        child: SizedBox(height: size.height,
        child: Stack(
          children: [
            Positioned(
              top: size.height * (animated2.value + .58), 
            )
          ],
        ),)),
    );
  }
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
    ..shader = LinearGradient(
      colors: [Color(0xffFD5E3D), 
    Color(0xffC43990)],
    begin: Alignment.topLeft, 
    end: Alignment.bottomLeft)
  }
}