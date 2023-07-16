import 'package:flutter/material.dart';
import 'package:testing_reusable_widgets/custom_progressbar.dart';


void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text("Reusable Widgets"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            customProgressBar(0, true, 750, 20, Colors.red, Colors.red, 60, 10, 0)
          ],
        ),
      ),
    ),
  ));
}