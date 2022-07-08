import 'package:example/router/router.dart';
import 'package:flutter/material.dart';
import 'package:hi_router_x/hi_router_x.dart';

// extension NumberParsing on HiRouter {
//   void turnOn() {
//     print('OUTTER out');
//   }
// }

// extension NumberParsing on HiRouter with  {}

// extension NumberParsing on HiRouter {
//   void myConfigure() {
//     print('NumberParsing myConfigure');
//   }
// }

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  _MyAppState() {
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
