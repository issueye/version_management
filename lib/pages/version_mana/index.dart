import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:version_management/components/custom_button.dart';
import 'package:version_management/components/custom_select.dart';
// ignore: library_prefixes
import 'package:version_management/model/version_info/version_info.dart'
    as versionInfoModel;
import 'package:version_management/pages/version_mana/version_info.dart';
import 'package:version_management/store/version_info_store.dart';

class VersionMana extends StatefulWidget {
  const VersionMana({Key? key, required this.name, required this.id})
      : super(key: key);
  final String name;
  final String id;

  @override
  // ignore: library_private_types_in_public_api
  _VersionManaState createState() => _VersionManaState();
}

class _VersionManaState extends State<VersionMana> {
  final TextEditingController release = TextEditingController();
  final TextEditingController branch = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String title = '当前项目 -> ${widget.name}';
    var versionStore = Provider.of<VersionInfoStore>(context);

    final Map<String, dynamic> releaseType = <String, dynamic>{
      'alpha': 'alpha',
      'beta': 'beta',
      'rc': 'rc',
      'release': 'release'
    };

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: [
          const SizedBox(height: 30),
          Row(
            children: [
              const SizedBox(width: 20),
              SizedBox(
                width: 200,
                child: CustomSelect(
                  selectData: release,
                  data: releaseType,
                  hint: '请选择发布类型',
                  onChanged: (value) {
                    release.text = value;
                    debugPrint(value);
                    setState(() {});
                  },
                ),
              ),
              const SizedBox(width: 20),
              SizedBox(
                width: 200,
                child: CustomSelect(
                  selectData: branch,
                  data: releaseType,
                  hint: '请选择开发分支',
                  onChanged: (value) {
                    branch.text = value;
                    debugPrint(value);
                    setState(() {});
                  },
                ),
              ),
              const Spacer(),
              CustomButton(onPressed: () {}, name: '查询'),
              const SizedBox(width: 30),
            ],
          ),
          const SizedBox(height: 30),
          Expanded(child:
              Consumer<VersionInfoStore>(builder: (context, value, child) {
            return value.data != null && value.data!.data!.isNotEmpty
                ? _loadList(value.data!)
                : _notData();
          })),
        ],
      ),
    );
  }

  Widget _loadList(versionInfoModel.VersionInfo list) {
    debugPrint('当前有 ${list.data!.length} 条版本信息');
    return ListView.builder(
        itemCount: list.data!.length,
        itemBuilder: (context, index) {
          if (list.data!.length > index) {
            return VersionInfo(
              data: list.data![index],
            );
          } else {
            return const Text('');
          }
        });
  }

  Widget _notData() {
    return const Center(child: Text('没有数据'));
  }
}
