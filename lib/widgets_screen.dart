import 'package:flutter/material.dart';

import 'custom_progressbar.dart';

class WidgetsScreen extends StatefulWidget {
  const WidgetsScreen({Key? key}) : super(key: key);

  @override
  State<WidgetsScreen> createState() => _WidgetsScreenState();
}

class _WidgetsScreenState extends State<WidgetsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Reusable Widgets"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            const Text("A Red Reusable Progress Bar"),
            const SizedBox(height: 5),
            customProgressBar(0.0, true, 750, 20.0, 370.0, Colors.red,
                const Color(0x33FF0000), .2, 10.0, 0.0),
            const SizedBox(height: 10),
            const Text("An Orange Reusable Progress Bar"),
            const SizedBox(height: 5),
            customProgressBar(0.0, true, 1000, 30.0, 350.0,
                const Color(0xFFFF7300),
                const Color(0x33FF7300), .6, 10.0, 0.0),
            const SizedBox(height: 10),
            const Text("A Yellow Reusable Progress Bar"),
            const SizedBox(height: 5),
            customProgressBar(0.0, true, 1000, 40.0, 150.0,
                const Color(0xFFFFCC00),
                const Color(0x33FFCC00), .35, 10.0, 0.0),
            const SizedBox(height: 10),
            const Text("A Green Reusable Progress Bar"),
            const SizedBox(height: 5),
            customProgressBar(0.0, true, 1000, 25.0, 300.0,
                const Color(0xFF04E704),
                const Color(0x3304E704), .87, 30.0, 0.0),
          ],
        ),
      ),
    );
  }
}
