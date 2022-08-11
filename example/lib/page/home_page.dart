import 'package:example/component/router/router.dart';
import 'package:example/router/path.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('首页'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        itemExtent: 44,
        children: [
          InkWell(
            onTap: () {},
            child: const Text('Core'),
          ),
          InkWell(
            onTap: () {
              HiRouter.shared().navigateTo(context, HiRouterPathEx.dialog);
            },
            child: const Text('Dialog'),
          ),
          InkWell(
            onTap: () {
              HiRouter.shared().navigateTo(context, HiRouterPathEx.http);
            },
            child: const Text('Http'),
          ),
        ],
      ),
    );
  }
}
