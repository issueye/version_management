import 'package:flutter/material.dart';
import 'package:version_management/components/custom_button.dart';
import 'package:version_management/components/custom_text.dart';
import 'package:version_management/components/custom_vertical_divider.dart';
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(text: widget.data.appName!),
              const SizedBox(height: 10),
              BaseComponent.divider,
              const SizedBox(height: 10),
              CustomText(text: widget.data.commitHash!),
              const SizedBox(height: 20),
              const CustomText(text: '版本内容:'),
              const SizedBox(height: 10),
              CustomText(text: widget.data.content!),
              const SizedBox(height: 20),
              Row(
                children: [
                  RawButton(name: widget.data.version!, onPressed: () {},),
                  const CustomVerticalDivider(),
                  RawButton(name: widget.data.branch!, onPressed: () {},),
                  const CustomVerticalDivider(),
                  RawButton(name: widget.data.tag!, onPressed: () {},),
                  const CustomVerticalDivider(),
                  RawButton(name: widget.data.createAt!, onPressed: () {},),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
