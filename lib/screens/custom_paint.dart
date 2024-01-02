import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class HelloP extends StatelessWidget {
  const HelloP({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: 
          Stack(
            children:[ 
              Container(
                width: double.infinity, height: double.infinity,
                decoration: BoxDecoration(
                  color:Colors.blueAccent
                ),
              child:               CustomPaint(
    size: Size(30, (30*1).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
    painter: RPSCustomPainter(),
)
            ),
           
        ]
           )
   ) );
  }
}




//Copy this CustomPainter code to the Bottom of the File


//Add this CustomPaint widget to the Widget Tree


//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {
    @override
    void paint(Canvas canvas, Size size) {
            
Path path_0 = Path();
    path_0.moveTo(size.width*0.2450000,size.height*-0.2770000);
    path_0.cubicTo(size.width*0.3020000,size.height*-0.2440000,size.width*0.3220000,size.height*-0.1520000,size.width*0.3240000,size.height*-0.06800000);
    path_0.cubicTo(size.width*0.3260000,size.height*0.01700000,size.width*0.3100000,size.height*0.09300000,size.width*0.2790000,size.height*0.1730000);
    path_0.cubicTo(size.width*0.2470000,size.height*0.2520000,size.width*0.1990000,size.height*0.3330000,size.width*0.1320000,size.height*0.3550000);
    path_0.cubicTo(size.width*0.06400000,size.height*0.3760000,size.width*-0.02200000,size.height*0.3380000,size.width*-0.07700000,size.height*0.2860000);
    path_0.cubicTo(size.width*-0.1320000,size.height*0.2340000,size.width*-0.1550000,size.height*0.1680000,size.width*-0.1980000,size.height*0.1080000);
    path_0.cubicTo(size.width*-0.2400000,size.height*0.04700000,size.width*-0.3020000,size.height*-0.009000000,size.width*-0.3090000,size.height*-0.06900000);
    path_0.cubicTo(size.width*-0.3150000,size.height*-0.1290000,size.width*-0.2660000,size.height*-0.1930000,size.width*-0.2050000,size.height*-0.2250000);
    path_0.cubicTo(size.width*-0.1440000,size.height*-0.2570000,size.width*-0.07200000,size.height*-0.2570000,size.width*0.01100000,size.height*-0.2700000);
    path_0.cubicTo(size.width*0.09400000,size.height*-0.2830000,size.width*0.1880000,size.height*-0.3100000,size.width*0.2450000,size.height*-0.2770000);
    path_0.close();

Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
paint_0_fill.shader = ui.Gradient.linear(Offset(0,size.height*0.01000000), Offset(size.width*0.01000000,0), [
  Color.fromRGBO(248, 117, 55, 1).withOpacity(1),
  Color.fromRGBO(251, 168, 31, 1).withOpacity(1)], [0,1]);
canvas.drawPath(path_0,paint_0_fill);

}

@override
bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
}
}