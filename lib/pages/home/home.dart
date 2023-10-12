import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:version_management/api/api.dart';
import 'package:version_management/common/request/services.dart';
import 'package:version_management/components/custom_button.dart';
import 'package:version_management/components/custom_text_field.dart';
import 'package:version_management/common/message/material_message.dart';
import 'package:version_management/model/repo_list/datum.dart';
import 'package:version_management/model/repo_list/repo_list.dart';
import 'package:version_management/pages/home/drawer.dart';
import 'package:version_management/pages/home/repo_info.dart';
import 'package:version_management/store/repo_list_store.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    DioSingleton.baseUrl = 'http://192.168.200.68:10061';
  }

  final Tween<Offset> _tween =
      Tween<Offset>(begin: const Offset(1, 0), end: const Offset(0, 0));

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    var repoStore = Provider.of<RepoListStore>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('版本管理'),
        actions: [
          IconButton(
            splashRadius: 20,
            icon: const Icon(Icons.refresh),
            onPressed: () async {
              RepoList list = await Api.getRepoList();
              repoStore.setData(list);
            },
          ),
          const SizedBox(width: 20),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(),
        child: Column(
          children: [
            const SizedBox(height: 30),
            Row(
              children: [
                const SizedBox(width: 30),
                Expanded(
                  child: CustomTextField(
                    controller: searchController,
                    suffixIcon: Icons.search,
                    hintText: "请输入项目名称",
                  ),
                ),
                const SizedBox(width: 30),
                CustomButton(
                  onPressed: () {
                    Message.warn(context, Icons.add, '添加项目');
                  },
                  name: '添加仓库',
                ),
                const SizedBox(width: 30)
              ],
            ),
            const SizedBox(height: 30),
            Expanded(
              child: Consumer<RepoListStore>(
                builder: (context, value, child) {
                  return value.listData != null &&
                          value.listData!.data!.isNotEmpty
                      ? _items(value.listData!)
                      : _notData();
                },
              ),
            ),
          ],
        ),
      ),
      drawer: getDrawer(),
    );
  }

  Widget _items(RepoList listData) {
    return AnimatedList(
      initialItemCount: listData.data!.length,
      itemBuilder: (context, index, animation) {
        if (listData.data!.length > index) {
          Datum data = listData.data![index];
          return SlideTransition(
            position: animation
                .drive(CurveTween(curve: Curves.bounceInOut))
                .drive(_tween),
            child: RepoInfo(data: data),
          );
        } else {
          return const Text('');
        }
      },
    );
  }

  Widget _notData() {
    return const Center(child: Text('没有数据'));
  }
}
