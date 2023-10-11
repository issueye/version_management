import 'package:flutter/material.dart';
import 'package:version_management/model/repo_list/repo_list.dart';

class RepoListStore with ChangeNotifier {
  RepoList? listData;
  RepoListStore();

  void setData(RepoList list) {
    listData = list;
    notifyListeners();
  }

  void removeDataById(String id) {
    if (listData == null) return;
    listData!.data!.removeWhere((element) => element.id == id);

    notifyListeners();
  }
}
