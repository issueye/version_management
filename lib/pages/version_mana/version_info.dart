import 'package:flutter/material.dart';
import 'package:version_management/common/assets/images.dart';
import 'package:version_management/common/message/material_message.dart';
import 'package:version_management/components/custom_button.dart';
import 'package:version_management/model/version_info/datum.dart';
import 'package:version_management/utils/app_theme.dart';
import 'package:version_management/utils/base_components.dart';

class VersionInfo extends StatefulWidget {
  const VersionInfo({Key? key, required this.data}) : super(key: key);
  final Datum data;

  @override
  // ignore: library_private_types_in_public_api
  _VersionInfoState createState() => _VersionInfoState();
}

class _VersionInfoState extends State<VersionInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: AppTheme.repoItemMargin,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Color(0xFFdfdfdf),
            offset: Offset(0.0, 0.7),
            blurRadius: 14.0,
            spreadRadius: 0.0,
          ),
        ],
        borderRadius: BorderRadius.circular(5),
        color: AppTheme.fishMawColor,
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          padding: AppTheme.defaultButtonPadding,
          textStyle: AppTheme.defaultTextStyle,
          shape:
              const RoundedRectangleBorder(borderRadius: AppTheme.mainRadius),
        ),
        onPressed: () {},
        child: Container(
          padding: AppTheme.defaultButtonPadding,
          child: const Text(
            '123',
            style: AppTheme.defaultTextStyle,
          ),
        ),
      ),
    );
  }
}
