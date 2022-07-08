import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:hi_router_x/hi_router_x.dart';

class HiRouter {
  VoidCallback? _myinit;
  final innerRouter = FluroRouter();

  static HiRouter? _instance;
  static HiRouter sharedInstance() {
    _instance ??= HiRouter._();
    // if (_instance == null) {
    //   _instance = HiRouter._();
    //   if (_instance! is HiRouterConfiguration) {
    //     (_instance! as HiRouterConfiguration).configure();
    //   } else {
    //     _instance!.myConfigure();
    //   }
    // }
    return _instance!;
  }

  void define(String path,
      {HiRouterType type = HiRouterType.route, required HiRouterFunc func}) {
    var handler = Handler(type: type.rawValue, handlerFunc: func);
    innerRouter.define(path, handler: handler);
  }

  void configure(VoidCallback myinit) {
    _myinit = myinit;
    _myinit!();
  }

  void navigateTo(BuildContext context, String path) {
    innerRouter.navigateTo(context, path);
  }

  void show() {}

  HiRouter._();
}

// mixin HiRouterConfiguration {
//   void configure() {
//     print('ineer configure');
//   }
// }
