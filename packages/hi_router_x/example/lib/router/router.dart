import 'package:example/page/detail_page.dart';
import 'package:example/page/home_page.dart';
import 'package:example/router/path.dart';
import 'package:flutter/material.dart';
import 'package:hi_router_x/hi_router_x.dart';

extension RouterConfiguration on HiRouter {
  static const String deepLink = "/message";

  void configure() {
    define(HiRouterPath.root,
        func: (BuildContext? context, Map<String, List<String>> parameters) {
      return const HomePage();
    });
    define(HiRouterPathEx.detail,
        func: (BuildContext? context, Map<String, List<String>> parameters) {
      return const DetailPage();
    });
  }
}
