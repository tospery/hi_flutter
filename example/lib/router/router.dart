import 'package:example/page/dialog_page.dart';
import 'package:example/page/home_page.dart';
import 'package:example/router/path.dart';
import 'package:flutter/material.dart';
import 'package:hi_flutter/hi_flutter.dart';

extension HiRouterEx on HiRouter {
  void configure() {
    define(HiRouterPath.root,
        func: (BuildContext? context, Map<String, List<String>> parameters) {
      return const HomePage();
    });
    define(HiRouterPathEx.dialog,
        func: (BuildContext? context, Map<String, List<String>> parameters) {
      return const DialogPage();
    });
  }
}
