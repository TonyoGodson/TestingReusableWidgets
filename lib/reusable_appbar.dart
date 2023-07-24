import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class AppBarWidget extends StatefulWidget {
  final BuildContext context;
  final VoidCallback onTap;
  final BoxShape shape;
  final Color color;
  final Color color2;
  final String content;
  final String content2;
  final String content3;
  final double c_width;
  final double c_height;
  final double radius;
  final double left;
  final double top;
  final double right;
  final double bottom;
  final double sizedBoxHt;
  final double toolbarHt;
  final double backPaddingLeft;
  final double backPaddingTop;
  final double backPaddingRight;
  final double backPaddingBottom;
  final double backBtnHt;
  final double backBtnWt;
  final double backBtnRd;
  final double iconSize;
  final double padding;
  final bool animation;
  final int duration;
  final double height;
  final double percent;
  final double progressRadius;
  final double lerp;
  final bool isCurved;

  const AppBarWidget({super.key,
    required this.context, required this.onTap, required this.shape, required this.color,
    required this.backPaddingBottom, required this.color2, required this.content, required this.content2,
    required this.content3, required this.c_width, required this.c_height, required this.sizedBoxHt, required this.radius, required this.left,
    required this.backPaddingRight, required this.top, required this.right, required this.bottom, required this.backBtnHt,
    required this.backPaddingTop, required this.backBtnWt, required this.backBtnRd, required this.iconSize,
    required this.padding, required this.animation, required this.duration, required this.height, required this.backPaddingLeft,
    required this.percent, required this.progressRadius, required this.lerp, required this.isCurved, required this.toolbarHt
  });

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: widget.toolbarHt,
      leadingWidth: double.maxFinite,
      leading:
      Column(children: [
        Row(
            children: [
              Padding(
                  padding: EdgeInsets.fromLTRB(
                      widget.backPaddingLeft, widget.backPaddingTop,
                      widget.backPaddingRight,  widget.backPaddingBottom
                    /*15.0, 0.0, 0.0, 0.0*/),
                  child: GestureDetector(
                    onTap: widget.onTap,
                    child: AnimatedContainer(
                        duration: const Duration(milliseconds: 1000),
                        alignment: Alignment.center, width: widget.backBtnWt, /*50.0,*/
                        height: widget.backBtnHt, padding: const EdgeInsets.all(0.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(widget.backBtnRd/*15.0*/),
                            color: const Color(0x2F2B88D8)
                        ),
                        child:  Image(
                          image: const AssetImage('asset/arrow_left2.png'),
                          width: widget.iconSize, height: widget.iconSize, fit: BoxFit.cover,)),
                  )),
              const SizedBox(width: 10.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10.0),
                  Text(widget.content,
                      style:  TextStyle(fontSize: 18.0,
                        fontWeight: FontWeight.w600, color: Colors.grey[800],)),
                  const SizedBox(height: 3.0),
                  Text(widget.content2,style: const TextStyle(fontSize: 12.0,
                    fontWeight: FontWeight.w500, color: Colors.black54,))
                ],),
              const Expanded(child: SizedBox()),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(widget.left, widget.top, widget.right, widget.bottom),
                width: MediaQuery.of(context).size.width * widget.c_width,
                height: MediaQuery.of(context).size.width * widget.c_height,
                decoration: BoxDecoration(
                    shape: widget.shape,
                    color: widget.color,
                    borderRadius: BorderRadius.circular(widget.radius)),
                child:  Text(widget.content3, style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w500,
                  color: widget.color2,)),
              ),]),
        SizedBox(height: widget.sizedBoxHt),
        LinearPercentIndicator(
            padding: EdgeInsets.fromLTRB(
                widget.padding, widget.padding,
                widget.padding, widget.padding),
            animation: widget.animation,
            animationDuration: widget.duration,
            lineHeight: widget.height,
            percent: widget.percent,
            progressColor: const Color(0xFF2B88D8),
            backgroundColor: const Color(0x772B88D8),
            barRadius: widget.isCurved ? Radius.lerp(
                Radius.circular(widget.radius), // Starting radius (a)
                Radius.circular(widget.radius), // Ending radius (b)
                widget.lerp) : null)
      ],),
      // backgroundColor: Colors.red,
      backgroundColor: Colors.grey[100],
      elevation: 0,);
  }
}