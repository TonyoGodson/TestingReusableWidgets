import 'package:flutter/material.dart';
import 'package:testing_reusable_widgets/reusable_appbar.dart';

class ScreenTwo extends StatefulWidget {
  static const routeName = '/screen_two';
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 77.0,
          automaticallyImplyLeading: false,
          elevation: 0,
          flexibleSpace: AppBarWidget(
            context: context,
            onTap: (){},
            shape: BoxShape.rectangle,
            color: const Color(0x2F2D88D8),
            color2: const Color(0xFF2D88D8),
            content: "Screen Two",
            content2: "Personal Info Screen",
            content3: "2/5",
            c_width: 0.13,
            c_height: 0.13,
            radius: 60.0,
            left: 0.0,
            top: 5.0,
            right: 15.0,
            bottom: 0.0,
            backBtnHt: 50.0,
            backBtnWt: 50.0,
            backBtnRd: 15.0,
            iconSize: 30.0,
            padding: 0.0,
            animation: true,
            duration: 750,
            height: 5.0,
            toolbarHt: 77.0,
            sizedBoxHt: 8.0,
            percent: .0,
            progressRadius: 0.0,
            lerp: 0.0,
            isCurved: false,
            backPaddingLeft: 15.0,
            backPaddingTop: 5.0,
            backPaddingRight: 0.0,
            backPaddingBottom: 0.0,
          )),
    );
  }
}
