import 'package:flutter/material.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Drawer(
            ///侧边栏按钮Drawer
            child: Container(
              ///默认背景
              color: Colors.orange,
              child: const Text('内容'),
            ),
          ),
    );
  }
}
