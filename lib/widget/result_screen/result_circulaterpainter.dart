
import 'dart:math';

import 'package:flutter/material.dart';

class Circularpainter extends CustomPainter {
  final  Color backgroundColor;
  final  Color LineColor;
  final double width;
  Circularpainter({required this.backgroundColor,
    required  this.LineColor,
    required  this.width});



////this.LineColor, this.width, this.backgroundColor
 // Circularpainter(this.LineColor, this.width, {required this.backgroundColor,required this.LineColor,});

  @override
  void paint(Canvas canvas, Size size) {
     Paint  backgroundLine = Paint()
      ..color = backgroundColor
      ..strokeCap = StrokeCap.round

      ..style = PaintingStyle.stroke
       ..strokeWidth = width;
      //important set stroke style

     Paint completeLine= Paint()
       ..color = LineColor
       ..strokeCap = StrokeCap.round

       ..style = PaintingStyle.stroke
       ..strokeWidth = width;
    Offset con=Offset(size.width/2, size.height/2);
    double radious=min(size.width/2, size.height/2);
    double sweepAngle= 2*pi;
     canvas.drawCircle(con,radious,backgroundLine);
     canvas.drawArc( Rect.fromCircle(center: con, radius: radious),-pi/2,
         sweepAngle, false, completeLine);

  }

  @override
  bool shouldRepaint(  covariant   CustomPainter oldDelegate) => false;
}