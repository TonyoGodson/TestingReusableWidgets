import 'package:flutter/material.dart';


class DropdownWidget extends StatefulWidget {
  final String valueChoose;
  final List<dynamic> listItem;
  final String hint;
  final Function(dynamic)? onChanged;
  final double left;
  final double top;
  final double right;
  final double bottom;
  const DropdownWidget({super.key,
    required this.valueChoose,
    required this.listItem,
    required this.hint,
    required this.onChanged,
    required this.left,
    required this.top,
    required this.right,
    required this.bottom
  });

  @override
  _DropdownWidgetState createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<DropdownWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(widget.left, widget.top, widget.right, widget.bottom),
      child: Container(
        width: double.maxFinite,
        height: 50.0,
        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: const Color(0xFFE9EBED),
        ),
        child: Center(
          child: DropdownButton(
            hint: Text(widget.hint, style: TextStyle(color: Colors.grey[800])),
            icon: const Icon(Icons.keyboard_arrow_down_sharp),
            isExpanded: true,
            underline: const SizedBox(),
            value: (widget.valueChoose),
            onChanged: widget.onChanged,
            items: widget.listItem.map((valueItem) {
              return DropdownMenuItem(
                  value: valueItem,
                  child: Text(valueItem, style: TextStyle(color: Colors.grey[800])));
            }).toList(),
          ),
        ),
      ),
    );
  }
}