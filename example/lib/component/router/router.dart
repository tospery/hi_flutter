import 'package:example/component/router/core.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HiRouter {
  // VoidCallback? _myinit;
  final _router = FluroRouter();

  static HiRouter? _instance;
  static HiRouter shared() {
    _instance ??= HiRouter._();
    return _instance!;
  }

  HiRouter._() {
    _initialize();
  }

  void _initialize() {
    _router.notFoundHandler = Handler(
        handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      if (kDebugMode) {
        print("ROUTE WAS NOT FOUND !!!");
      }
      return;
    });
  }

  Route<dynamic>? generator(RouteSettings routeSettings) =>
      _router.generator(routeSettings);

  void define(String path,
          {HiRouterType type = HiRouterType.route,
          required HiRouterFunc func}) =>
      _router.define(path,
          handler: Handler(type: type.rawValue, handlerFunc: func));

  Future navigateTo(BuildContext context, String path,
          {HiTransitionType? transition}) =>
      _router.navigateTo(context, path, transition: transition?.rawValue);

  Future push(BuildContext context, String path) => _router
      .navigateTo(context, path, transition: HiTransitionType.push.rawValue);

  Future present(BuildContext context, String path) => _router
      .navigateTo(context, path, transition: HiTransitionType.present.rawValue);

  void navigateBack<T>(BuildContext context, [T? result]) =>
      _router.pop(context, result);
}
