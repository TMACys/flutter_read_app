import 'package:flutter/material.dart';

import 'ContentPager.dart';

class navigator extends StatefulWidget {
  @override
  _navigatorState createState() => _navigatorState();
}

class _navigatorState extends State<navigator> {
  final _defaultColor = Colors.grey;
  final _activeColor = Colors.blue;
  int _currentIndex = 0;
  final ContentPageController _contentPageController = ContentPageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Color(0xffedeef0),
                    Color(0xffe6e7e9)
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
          child: ContentPager(
            contentPageController: _contentPageController,
            onPageChanged: (int index){
              setState(() {
                _currentIndex = index;
              });
            },
          )
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          _contentPageController.jumpToPage(index);
          //修改状态
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          _bottomItem("本周", Icons.folder, 0),
          _bottomItem("分享", Icons.explore, 1),
          _bottomItem("免费", Icons.donut_small, 2),
          _bottomItem("长安", Icons.person, 3),
        ],
      ),
    );
  }

  _bottomItem(String title, IconData icon, int index) {
    return BottomNavigationBarItem(
      icon: Icon(icon, color: _defaultColor),
      activeIcon: Icon(icon, color: _activeColor),
      title: Text(title,
          style: TextStyle(
              color: _currentIndex != index ? _defaultColor : _activeColor)),
    );
  }
}
