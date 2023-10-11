import 'package:version_management/common/request/services.dart';
import 'package:version_management/model/repo_list/repo_list.dart';

class Api {
  static Future<RepoList> getRepoList() async {
    const String url = '/admin/api/v1/repo';
    var data = await DioSingleton.getData(url);
    // debugPrint('${data.data}');
    return RepoList.fromMap(data.data);
  }
}
