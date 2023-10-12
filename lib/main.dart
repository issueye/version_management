import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:version_management/router/index.dart';
import 'package:version_management/store/repo_list_store.dart';
import 'package:version_management/store/version_info_store.dart';
import 'package:version_management/utils/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<RepoListStore>(create: (_) => RepoListStore()),
        ChangeNotifierProvider<VersionInfoStore>(create: (_) => VersionInfoStore()),
      ],
      child: MaterialApp.router(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: AppTheme.defaultFontFamily,
          appBarTheme: AppTheme.appBarTheme,
        ),
        routerConfig: AppRoutes.router,
      ),
    );
  }
}
