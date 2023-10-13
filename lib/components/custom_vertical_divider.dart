import 'package:flutter/material.dart';

class CustomVerticalDivider extends StatefulWidget {
  const CustomVerticalDivider({super.key, this.space = 10, this.color = Colors.grey});
  final double space;
  final Color color; 

  @override
  State<CustomVerticalDivider> createState() => _CustomVerticalDividerState();
}

class _CustomVerticalDividerState extends State<CustomVerticalDivider> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: widget.space),
        const SizedBox(
          height: 12,
          child: VerticalDivider(
            color: Colors.grey,
            thickness: 1,
            width: 1,
          ),
        ),
        SizedBox(width: widget.space),
      ],
    );
  }
}
