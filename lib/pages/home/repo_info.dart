import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:version_management/common/assets/images.dart';
import 'package:version_management/common/message/material_message.dart';
import 'package:version_management/components/custom_button.dart';
import 'package:version_management/model/repo_list/datum.dart';
import 'package:version_management/store/repo_list_store.dart';
import 'package:version_management/utils/app_theme.dart';
import 'package:version_management/utils/base_components.dart';

class RepoInfo extends StatefulWidget {
  const RepoInfo({Key? key, required this.data}) : super(key: key);
  final Datum data;

  @override
  // ignore: library_private_types_in_public_api
  _RepoInfoState createState() => _RepoInfoState();
}

class _RepoInfoState extends State<RepoInfo> {
  @override
  Widget build(BuildContext context) {

    var repoStore = Provider.of<RepoListStore>(context);

    return Container(
      margin: AppTheme.repoItemMargin,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
              color: Color(0xFFdfdfdf),
              offset: Offset(0.0, 0.7),
              blurRadius: 14.0,
              spreadRadius: 0.0),
        ],
        borderRadius: BorderRadius.circular(5),
        color: AppTheme.fishMawColor,
      ),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.white,
            padding: AppTheme.defaultButtonPadding,
            textStyle: const TextStyle(
              fontSize: AppTheme.defaultFontSize,
              fontFamily: AppTheme.defaultFontFamily,
              fontWeight: AppTheme.defaultFontWeight,
            ),
            shape:
                const RoundedRectangleBorder(borderRadius: AppTheme.mainRadius),
          ),
          onPressed: () {},
          child: Container(
            padding: AppTheme.defaultButtonPadding,
            child: Column(
              children: [
                Row(
                  children: [
                    Images.projectImage,
                    const SizedBox(width: 10),
                    Text(
                      widget.data.projectName!,
                      style: const TextStyle(
                        color: AppTheme.defaultContentTextColor,
                        fontSize: AppTheme.fontSize_17,
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Spacer(),
                    CustomButton(onPressed: (){
                      Message.info(context, Icons.create, '操作${widget.data.projectName}');
                    }, name: '工作台'),
                    const SizedBox(width: 3),
                    DangerButton(onPressed: (){
                      repoStore.removeDataById(widget.data.id!);
                      Message.error(context, Icons.delete, '操作${widget.data.projectName}');
                    }, name: '删除'),
                    const SizedBox(width: 10),
                  ],
                ),
                const SizedBox(height: 10),
                BaseComponent.divider,
                const SizedBox(height: 20),
                Row(
                  children: [
                    Images.urlImage,
                    const SizedBox(width: 3),
                    const Text('仓库地址 ',
                    style: TextStyle(
                        color: AppTheme.hintColor,
                        fontSize: 11,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      widget.data.repoUrl!,
                      style: const TextStyle(
                        color: AppTheme.hintColor,
                        fontSize: 11,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    Images.createAtImage,
                    const SizedBox(width: 3),
                    const Text('创建时间 ',
                    style: TextStyle(
                        color: AppTheme.hintColor,
                        fontSize: 11,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      widget.data.createAt!,
                      style: const TextStyle(
                        color: AppTheme.hintColor,
                        fontSize: 11,
                      ),
                    )
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
