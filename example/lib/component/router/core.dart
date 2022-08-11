import 'dart:io';

import 'package:fluro/fluro.dart';
import 'package:flutter/widgets.dart';

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

enum HiTransitionType {
  none,
  push,
  present,
  dialog;

  TransitionType get rawValue {
    switch (this) {
      case HiTransitionType.none:
        return TransitionType.none;
      case HiTransitionType.push:
        return TransitionType.native;
      case HiTransitionType.present:
        return TransitionType.nativeModal;
      case HiTransitionType.dialog:
        if (Platform.isIOS) {
          return TransitionType.cupertinoFullScreenDialog;
        }
        return TransitionType.materialFullScreenDialog;
    }
  }
}
