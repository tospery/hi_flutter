import 'package:flutter/material.dart';
import 'package:hi_router_x/hi_router_x.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            HiRouter.shared().navigateBack(context);
          },
          child: const Text(
            '返回首页',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
