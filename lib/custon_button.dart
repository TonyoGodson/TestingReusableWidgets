import 'package:flutter/material.dart';

Widget Button(
    String text,
    Color color,
    Color color2,
    double height,
    double width,
    Function() ontap,
    double radius,
    double left,
    double top,
    double right,
    double bottom,
    ){
  return GestureDetector(
    onTap: ontap,
    child: Container(
      alignment: Alignment.center,
      width: width,
      height: height,
      margin: EdgeInsets.fromLTRB(left, top, right, bottom),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: color,
      ),
      child: Text(text, style: TextStyle(
        color: color2,
        fontWeight: FontWeight.w500,
        fontSize: 18.0,
      ),),
    ),
  );
}