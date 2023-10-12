import 'package:go_router/go_router.dart';
import 'package:version_management/pages/home/home.dart';
import 'package:version_management/pages/version_mana/index.dart';

class AppRoutes {
  static const String homePath = '/'; // 根路由
  static const String versionManaPath = '/version_mana'; // 启动页

  static const String homeNamed = 'home';
  static const String versionManaNamed = 'version_mana';

  static GoRouter router = GoRouter(
    initialLocation: homePath, // 默认路由, 不指定这一荐时，默认路由为 '/'
    routes: [
      GoRoute(
        name: homeNamed,
        path: homePath,
        builder: (context, state) => const Home(),
      ),
      GoRoute(
        name: versionManaNamed,
        path: versionManaPath,
        builder: (context, state) {
          var map = state.extra as Map<String, String?>;
          return VersionMana(name: map['name']!, id: map['id']!,);
        },
      )
    ]
  );
}
