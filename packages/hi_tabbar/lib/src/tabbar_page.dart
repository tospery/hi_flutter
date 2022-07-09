import 'package:flutter/material.dart';
import 'package:hi_tabbar/src/tabbar_info.dart';

class HiTabBarPage extends StatefulWidget {
  final List<HiTabBarInfo> infos;

  const HiTabBarPage({super.key, required this.infos});

  @override
  State<HiTabBarPage> createState() => _HiTabBarPageState();
}

class _HiTabBarPageState extends State<HiTabBarPage> {
  int _currentIndex = 0;
  final PageController _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _controller,
        children: widget.infos.map((info) => info.page).toList(),
        onPageChanged: (index) => _onJumpTo(index, pageChanged: true),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        selectedItemColor: Colors.red,
        items: widget.infos.map((info) => info.item).toList(),
        onTap: (index) => _onJumpTo(index),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  _onJumpTo(int index, {bool pageChanged = false}) {
    if (pageChanged) {
    } else {
      _controller.jumpToPage(index);
    }
    setState(() {
      _currentIndex = index;
    });
  }
}
