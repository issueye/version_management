import 'package:flutter/material.dart';
import 'package:version_management/utils/app_theme.dart';

class Message {
  // 默认消息
  static void info(BuildContext context, IconData? icon, String data) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: AppTheme.mainColor,
        behavior: SnackBarBehavior.floating,
        // 显示三秒
        duration: const Duration(seconds: 2),
        content: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              icon,
              color: AppTheme.fishMawColor,
            ),
            Text(data)
          ],
        ),
      ),
    );
  }

  // 默认消息
  static void error(BuildContext context, IconData? icon, String data) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: AppTheme.dangerColor,
        behavior: SnackBarBehavior.floating,
        // 显示三秒
        duration: const Duration(seconds: 2),
        content: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              icon,
              color: AppTheme.fishMawColor,
            ),
            Text(data)
          ],
        ),
      ),
    );
  }

  // 默认消息
  static void warn(BuildContext context, IconData? icon, String data) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: AppTheme.warinColor,
        behavior: SnackBarBehavior.floating,
        // 显示三秒
        duration: const Duration(seconds: 2),
        content: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              icon,
              color: AppTheme.fishMawColor,
            ),
            Text(data)
          ],
        ),
      ),
    );
  }
}
