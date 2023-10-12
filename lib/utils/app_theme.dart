import 'package:flutter/material.dart';

class AppTheme {
  // 颜色
  // 63bbd0 1661ab  景泰蓝 2775b6
  static const Color mainColor = Color(0xFF2775b6);
  static const Color hintColor = Color(0xFFA8ABB2);
  static const Color enabledColor = Color(0xFFe5e6eb);
  static const Color dangerColor = Color(0xFFf03752);
  static const Color warinColor = Color(0xFFfcc307);
  static const Color fishMawColor = Color(0xFFf7f4ed); // 鱼肚白
  static const Color lakeColor = Color(0x192775b6);
  static const Color dividerColor = Color(0xffDDDDDD);  // #9B9097  #F0F2F7 #DDDDDD

  static const Color defaultContentTextColor = Color(0xFF606266); // 默认输入框内容字体颜色
  static const Color errorContentTextColor =
      Color(0xFFf03752); // 错误时的颜色   海棠红 f03752

  // 字体
  static const double defaultFontSize = 14; // 字体大小
  static const double fontSize_15 = 15; // 字体大小
  static const double fontSize_16 = 16; // 字体大小
  static const double fontSize_17 = 17; // 字体大小
  static const double fontSize_18 = 18; // 字体大小
  static const String defaultFontFamily = '微软雅黑'; // 默认字体
  static const FontWeight defaultFontWeight = FontWeight.w400;

  static const double defaultTextFieldHeight = 30; // 输入框高度
  static const double defaultAppBarHeight = 40; // 标题高度

  static const AppBarTheme appBarTheme = AppBarTheme(
    toolbarHeight: AppTheme.defaultAppBarHeight,
    titleTextStyle: TextStyle(
      fontSize: AppTheme.defaultFontSize,
      fontFamily: AppTheme.defaultFontFamily,
    ),
    backgroundColor: AppTheme.mainColor,
  );

  static const defaultTextStyle = TextStyle(
              fontSize: AppTheme.defaultFontSize,
              fontFamily: AppTheme.defaultFontFamily,
              color: AppTheme.defaultContentTextColor,
            );

  static const EdgeInsetsGeometry defaultButtonPadding =
      EdgeInsets.symmetric(horizontal: 14, vertical: 14); // 默认内边距

  static const EdgeInsetsGeometry repoItemMargin =
      EdgeInsets.symmetric(horizontal: 10, vertical: 5); // 默认内边距

  static const EdgeInsetsGeometry defaultTextFieldContentPadding =
      EdgeInsets.symmetric(horizontal: 8, vertical: 9); //

  static const BorderRadius mainRadius =
      BorderRadius.all(Radius.circular(2)); // 圆角
}
