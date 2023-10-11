import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:version_management/pages/home/home.dart';
import 'package:version_management/store/repo_list_store.dart';
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
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: AppTheme.defaultFontFamily,
          appBarTheme: AppTheme.appBarTheme,
        ),
        home: const Home(),
      ),
    );
  }
}
