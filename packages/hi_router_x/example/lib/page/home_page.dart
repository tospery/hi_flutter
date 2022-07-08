import 'package:flutter/material.dart';
import 'package:hi_router_x/hi_router_x.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            log(HiRouterPath.about.value);
            HiRouter.shared().navigateTo(context, '/detail');
          },
          child: const Text(
            '跳转到详情页',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
