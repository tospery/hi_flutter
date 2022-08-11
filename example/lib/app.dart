import 'package:example/component/router/router.dart';
import 'package:example/router/router.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key) {
    HiRouter.shared().configure();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: HiRouter.shared().generator,
    );
  }
}
