import 'package:example/page/home_page.dart';
import 'package:example/page/profile_page.dart';
import 'package:example/page/search_page.dart';
import 'package:flutter/material.dart';
import 'package:hi_tabbar/hi_tabbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final infos = [
    HiTabBarInfo(
      const HomePage(),
      const BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Colors.grey,
          ),
          activeIcon: Icon(
            Icons.home,
            color: Colors.deepOrangeAccent,
          ),
          label: '首页'),
    ),
    HiTabBarInfo(
      const SearchPage(),
      const BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
            color: Colors.grey,
          ),
          activeIcon: Icon(
            Icons.search,
            color: Colors.deepOrangeAccent,
          ),
          label: '搜索'),
    ),
    HiTabBarInfo(
      const ProfilePage(),
      const BottomNavigationBarItem(
          icon: Icon(
            Icons.details,
            color: Colors.grey,
          ),
          activeIcon: Icon(
            Icons.details,
            color: Colors.deepOrangeAccent,
          ),
          label: '我的'),
    ),
  ];

  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HiTabBarPage(infos: infos),
    );
  }
}
