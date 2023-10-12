import 'package:version_management/common/request/services.dart';
import 'package:version_management/model/repo_list/repo_list.dart';
import 'package:version_management/model/version_info/version_info.dart';

class Api {
  // 获取项目列表
  static Future<RepoList> getRepoList() async {
    const String url = '/admin/api/v1/repo';
    var data = await DioSingleton.getData(url);
    // debugPrint('${data.data}');
    return RepoList.fromMap(data.data);
  }

  // 获取版本列表
  static Future<VersionInfo> getVersionInfoList(Map<String, dynamic>? params) async {
    const String url = '/admin/api/v1/repo/version';
    var data = await DioSingleton.getData(url, params: params);
    return VersionInfo.fromMap(data.data);
  }
}
