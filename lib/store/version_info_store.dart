import 'package:flutter/material.dart';
import 'package:version_management/api/api.dart';
import 'package:version_management/model/version_info/datum.dart';
import 'package:version_management/model/version_info/version_info.dart';

class VersionInfoStore with ChangeNotifier {
  VersionInfo? data;
  VersionInfoStore();

  void setData(VersionInfo list) {
    data = list;
    notifyListeners();
  }

  void removeDataById(String id) {
    if (data == null) return;
    data!.data!.removeWhere((element) => element.id == id);

    notifyListeners();
  }

  Future<void> getVersionList(Map<String, dynamic> params) async {
    VersionInfo info = await Api.getVersionInfoList(params);
    setData(info);
  }

  int len() {
    return data == null ? 0 : data!.data!.length;
  }

  Datum getItem(int index) {
    return data!.data![index];
  }
}
