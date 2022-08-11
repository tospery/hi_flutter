import 'package:example/component/router/path.dart';
import 'package:example/component/router/router.dart';
import 'package:example/page/home_page.dart';
import 'package:flutter/material.dart';

extension HiRouterEx on HiRouter {
  void configure() {
    define(HiRouterPath.root,
        func: (BuildContext? context, Map<String, List<String>> parameters) {
      return const HomePage();
    });
  }
}
