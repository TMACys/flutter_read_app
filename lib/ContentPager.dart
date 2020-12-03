import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'CardRecommend.dart';
import 'CustomAppbar.dart';

class ContentPager extends StatefulWidget {
  final ValueChanged<int> onPageChanged;
  final ContentPageController contentPageController;
  //构造方法 可选参数
  const ContentPager({Key key, this.onPageChanged, this.contentPageController}) : super(key: key);
  @override
  _ContentPagerState createState() => _ContentPagerState();
}

class _ContentPagerState extends State<ContentPager> {
  PageController _pageController = PageController(
    //视窗比例
    viewportFraction: 0.8
  );
  static List<Color> _colors = [
    Colors.blue,
    Colors.red,
    Colors.orange,
    Colors.green,
  ];

  @override
  void initState() {
    if(widget.contentPageController!=null){
      widget.contentPageController._pageController = _pageController;
    }
    _statusBar();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //appBar
        CustomAppBar(),
        Expanded(
            child: PageView(
              onPageChanged: widget.onPageChanged,
              controller: _pageController,
              children: [
                _wrapItem(CardRecommend()),
                _wrapItem(CardRecommend()),
                _wrapItem(CardRecommend()),
                _wrapItem(CardRecommend()),
              ],
            ))
      ],
    );
  }

  Widget _wrapItem(Widget widget) {
    return Padding(
        padding: EdgeInsets.all(10),
        child: widget
    );
  }
  _statusBar(){
    //黑色沉浸式状态栏
    SystemUiOverlayStyle uiOverlayStyle  = SystemUiOverlayStyle(
      systemNavigationBarColor: Color(0xFF000000),
      systemNavigationBarDividerColor: null,
      statusBarColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
    );
    SystemChrome.setSystemUIOverlayStyle(uiOverlayStyle);
  }
}


//内容区域控制器
class ContentPageController {
  PageController _pageController;
  void jumpToPage(int page){
    //安全调用
    _pageController?.jumpToPage(page);
  }
}
