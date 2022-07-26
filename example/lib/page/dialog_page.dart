import 'package:flutter/material.dart';
import 'package:hi_flutter/hi_flutter.dart';

class DialogPage extends StatefulWidget {
  const DialogPage({Key? key}) : super(key: key);

  @override
  State<DialogPage> createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialog'),
      ),
body: ListView(
        padding: const EdgeInsets.all(20),
        itemExtent: 44,
        children: [
          InkWell(
            onTap: () {
              toast('登录成功！');
            },
            child: const Text('toast'),
          ),
          InkWell(
            onTap: () {
              showToastActivity();
            },
            child: const Text('showToastActivity'),
          ),
        ],
      ),
    );
  }
}
