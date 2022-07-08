import 'package:fluro/fluro.dart';
import 'package:flutter/widgets.dart';

// /// The type of the handler, whether it's a buildable route or
// /// a function that is called when routed.
// enum HandlerType {
//   route,
//   function,
// }

// /// The handler to register with [FluroRouter.define]
// class Handler {
//   Handler({this.type = HandlerType.route, required this.handlerFunc});
//   final HandlerType type;
//   final HandlerFunc handlerFunc;
// }

typedef HiRouterFunc = Widget? Function(
    BuildContext? context, Map<String, List<String>> parameters);

enum HiRouterType {
  route,
  function;

  HandlerType get rawValue {
    switch (this) {
      case HiRouterType.route:
        return HandlerType.route;
      case HiRouterType.function:
        return HandlerType.function;
    }
  }
}

// class HiRouterHandler {
//   final HiRouterType type;
//   final HiRouterFunc func;

//   HiRouterHandler({this.type = HiRouterType.route, required this.func});
// }
