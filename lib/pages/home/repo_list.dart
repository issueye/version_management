import 'package:flutter/material.dart';
import 'package:version_management/model/repo_list/datum.dart';
import 'package:version_management/model/repo_list/repo_list.dart';
import 'package:version_management/pages/home/repo_info.dart';

Widget viewRepoList(BuildContext context, RepoList? list) {
  if (list == null) {
    return const Center(
      child: Text('没有数据'),
    );
  } else {
    return ListView.builder(
      itemCount: list.data!.length,
      itemBuilder: ((context, index) {
        Datum data = list.data![index];
        return RepoInfo(data: data);
      }),
    );
  }
}
