import 'package:example/page/home_page.dart';
import 'package:example/page/profile_page.dart';
import 'package:example/page/search_page.dart';
import 'package:flutter/material.dart';
import 'package:hi_tabbar/hi_tabbar.dart';

class TabBarPage extends StatefulWidget {
  const TabBarPage({Key? key}) : super(key: key);

  @override
  State<TabBarPage> createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> {
  final GlobalKey<HomePageState> dynamicKey = GlobalKey();
  final GlobalKey<SearchPageState> trendKey = GlobalKey();
  final GlobalKey<ProfilePageState> myKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    List<Widget> tabs = [
      _renderTab(Icons.home, '首页'),
      _renderTab(Icons.search, '搜索'),
      _renderTab(Icons.settings, '我的'),
    ];
    return GSYTabBarWidget(
      // drawer: const HomeDrawer(),
      type: TabType.bottom,
      tabItems: tabs,
      tabViews: [
        HomePage(key: dynamicKey),
        SearchPage(key: trendKey),
        ProfilePage(key: myKey),
      ],
      onDoublePress: (index) {
        // switch (index) {
        //   case 0:
        //     dynamicKey.currentState!.scrollToTop();
        //     break;
        //   case 1:
        //     trendKey.currentState!.scrollToTop();
        //     break;
        //   case 2:
        //     myKey.currentState!.scrollToTop();
        //     break;
        // }
      },
      backgroundColor: Colors.green,
      indicatorColor: Colors.white,
      // title: GSYTitleBar(
      //   '应用名称',
      //   iconData: Icons.search,
      //   needRightLocalIcon: true,
      //   onRightIconPressed: (centerPosition) {
      //     // NavigatorUtils.goSearchPage(context, centerPosition);
      //   },
      // ),
    );
  }

  _renderTab(icon, text) {
    return Tab(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[Icon(icon, size: 16.0), Text(text)],
      ),
    );
  }
}
