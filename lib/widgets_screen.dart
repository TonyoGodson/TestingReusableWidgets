import 'package:flutter/material.dart';
import 'package:testing_reusable_widgets/custon_button.dart';

import 'custom_progressbar.dart';

class WidgetsScreen extends StatefulWidget {
  const WidgetsScreen({Key? key}) : super(key: key);

  @override
  State<WidgetsScreen> createState() => _WidgetsScreenState();
}

class _WidgetsScreenState extends State<WidgetsScreen> {
  double red = 0.0;
  double orange = 0.0;
  double yellow = 0.0;
  double green = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Reusable Widgets"),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            const Text("A Red Reusable Progress Bar"),
            const SizedBox(height: 5),
            customProgressBar(0.0, false, 750, 20.0, 320.0, Colors.red,
                const Color(0x33FF0000), red, 10.0, 0.0),
            const SizedBox(height: 10),
            const Text("An Orange Reusable Progress Bar"),
            const SizedBox(height: 5),
            customProgressBar(0.0, false, 1000, 30.0, 350.0,
                const Color(0xFFFF7300),
                const Color(0x33FF7300), orange, 10.0, 0.0),
            const SizedBox(height: 10),
            const Text("A Yellow Reusable Progress Bar"),
            const SizedBox(height: 5),
            customProgressBar(0.0, false, 1000, 40.0, 150.0,
                const Color(0xFFFFCC00),
                const Color(0x33FFCC00), yellow, 10.0, 0.0),
            const SizedBox(height: 10),
            const Text("A Green Reusable Progress Bar"),
            const SizedBox(height: 5),
            customProgressBar(0.0, false, 1000, 25.0, 300.0,
                const Color(0xFF04E704),
                const Color(0x3304E704), green, 30.0, 0.0),
            Row(
              children: [
                Button(
                    "+", const Color(0xFFFF0000), const Color(0xFFFFFFFF),
                    45.0, 45.0, () => {
                      setState((){red >= 0.9 ? red == 1.0 : red += 0.1;})
                },
                    10.0, 10.0, 10.0, 10.0, 10.0),
                const SizedBox(width: 15.0),
                Button(
                    "-", const Color(0xFFFF0000),const Color(0xFFFFFFFF),
                    45.0, 45.0, () => { setState((){red <= 0.09 ? red == 0.0 : red -= 0.1;})},
                    10.0, 10.0, 10.0, 10.0, 10.0),
                const SizedBox(width: 20),
                Button(
                    "+", const Color(0xFFFF7300), const Color(0xFFFFFFFF),
                    45.0, 45.0, () => {
                  setState((){orange  >= .9 ? orange == 1.0 : orange += .1;})
                },
                    50.0, 10.0, 10.0, 10.0, 10.0),
                const SizedBox(width: 15.0),
                Button(
                    "-", const Color(0xFFFF7300), const Color(0xFFFFFFFF),
                    45.0, 45.0, () => { setState((){orange <= 0.09 ? orange == 0.0 : orange -= 0.1;})},
                    50.0, 10.0, 10.0, 10.0, 10.0),
                const SizedBox(width: 20),],),
            Row(
              children: [
                Button(
                    "Increase", const Color(0xFFFFCC00), const Color(0xFFFF0000),
                    30.0, 120.0, () => {
                  setState((){yellow  >= .9 ? yellow == 1.0 : yellow += .1;})
                },
                    50.0, 10.0, 10.0, 10.0, 10.0),
                const SizedBox(width: 15.0),
                Button(
                    "Decrease", const Color(0xFFFFCC00), const Color(0xFFFF0000),
                    30.0, 120.0, () => { setState((){yellow <= 0.09 ? yellow == 0.0 : yellow -= 0.1;})},
                    50.0, 10.0, 10.0, 10.0, 10.0),
                const SizedBox(width: 20),
              ],
            ),
            Row(
              children: [
                Button(
                    "Add", const Color(0x3304E704), const Color(0xFF04E704),
                    30.0, 120.0, () => {
                  setState((){green  >= .9 ? green == 1.0 : green += .1;})
                },
                    0.0, 10.0, 10.0, 10.0, 10.0),
                const SizedBox(width: 15.0),
                Button(
                    "Subtract", const Color(0x3304E704), const Color(0xFF04E704),
                    30.0, 120.0, () => { setState((){green <= 0.09 ? green == 0.0 : green -= 0.1;})},
                    0.0, 10.0, 10.0, 10.0, 10.0),
                const SizedBox(width: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
