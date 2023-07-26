import 'package:flutter/material.dart';
import 'package:testing_reusable_widgets/custom_progressbar.dart';
import 'package:testing_reusable_widgets/screen_two.dart';
import 'package:testing_reusable_widgets/widgets_screen.dart';


void main(){
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    home: WidgetsScreen(),
    routes: {
      ScreenTwo.routeName: (BuildContext context) => ScreenTwo(),
    },
  ));
}