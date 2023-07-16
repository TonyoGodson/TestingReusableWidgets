import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

Widget customProgressBar(
    double padding,
    bool animation,
    int duration,
    double height,
    double width,
    Color color1,
    Color color2,
    var percent,
    double radius,
    double lerp
    ){
  return LinearPercentIndicator(
      padding: EdgeInsets.fromLTRB(padding, padding, padding, padding),
      animation: animation,
      animationDuration: duration,
      lineHeight: height,
      width: width,
      percent: percent,
      progressColor: color1,    /*const Color(0xFF2B88D8),*/
      backgroundColor: color2,  /*const Color(0x772B88D8),*/
      barRadius: Radius.lerp(
          Radius.circular(radius), // Starting radius (a)
          Radius.circular(radius), // Ending radius (b)
          lerp)
  );
}