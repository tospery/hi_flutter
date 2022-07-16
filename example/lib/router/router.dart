import 'package:example/page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:hi_flutter/hi_flutter.dart';

extension HiRouterEx on HiRouter {
  void configure() {
    define(HiRouterPath.root,
        func: (BuildContext? context, Map<String, List<String>> parameters) {
      return const HomePage();
    });
  }
}
