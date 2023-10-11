import 'package:flutter/material.dart';
import 'package:version_management/utils/app_theme.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({super.key, required this.onPressed, required this.name});
  final Function()? onPressed;
  final String name;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: AppTheme.mainColor,
        padding: AppTheme.defaultButtonPadding,
        textStyle: const TextStyle(
          fontSize: AppTheme.defaultFontSize,
          fontFamily: AppTheme.defaultFontFamily,
          fontWeight: AppTheme.defaultFontWeight,
        ),
        shape: const RoundedRectangleBorder(borderRadius: AppTheme.mainRadius),
      ),
      onPressed: widget.onPressed,
      child: Text(widget.name),
    );
  }
}

class DangerButton extends StatefulWidget {
  const DangerButton({super.key, required this.onPressed, required this.name});
  final Function()? onPressed;
  final String name;

  @override
  State<DangerButton> createState() => _DangerButtonState();
}

class _DangerButtonState extends State<DangerButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: AppTheme.dangerColor,
        padding: AppTheme.defaultButtonPadding,
        textStyle: const TextStyle(
          fontSize: AppTheme.defaultFontSize,
          fontFamily: AppTheme.defaultFontFamily,
          fontWeight: AppTheme.defaultFontWeight,
        ),
        shape: const RoundedRectangleBorder(borderRadius: AppTheme.mainRadius),
      ),
      onPressed: widget.onPressed,
      child: Text(widget.name),
    );
  }
}
