import 'package:flutter/material.dart';

Drawer getDrawer() {
  return Drawer(
        width: 200,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              child: Center(
                child: Text('程序信息'),
              ),
            ),
            ListTile(
              title: const Text('项目管理'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('设置'),
              onTap: () {},
            )
          ],
        ),
      );
}