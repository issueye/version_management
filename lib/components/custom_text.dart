import 'package:flutter/material.dart';
import 'package:version_management/utils/app_theme.dart';

class CustomText extends StatefulWidget {
  const CustomText({super.key, required this.text, this.size = AppTheme.defaultFontSize, this.color = AppTheme.defaultContentTextColor});
  final String text;
  final double size;
  final Color color;

  @override
  State<CustomText> createState() => _CustomTextState();
}

class _CustomTextState extends State<CustomText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      style: TextStyle(
        fontFamily: AppTheme.defaultFontFamily,
        fontSize: widget.size,
        color: widget.color,
      ),
    );
  }
}
