import 'package:example/detail_page.dart';
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

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    HiRouter.sharedInstance().configure(() {
      var detailHandler = Handler(handlerFunc:
          (BuildContext? context, Map<String, List<String>> params) {
        return DetailPage();
      });
      HiRouter.sharedInstance()
          .innerRouter
          .define('/detail', handler: detailHandler);
    });
  }

  void _incrementCounter() {
    HiRouter.sharedInstance().navigateTo(context, '/detail');
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
