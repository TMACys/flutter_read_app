import 'package:flutter/material.dart';

import 'BaseCard.dart';

class CardRecommend extends BaseCard{
  @override
  CardRecommendState createState() => CardRecommendState();
}

class CardRecommendState extends BaseCardState {
  @override
  void initState() {
    // TODO: implement initState
    subTitleColor = Color(0xffb99444);
    super.initState();
  }
  @override
  topTitle(String title) {
    // TODO: implement topTitle
    return super.topTitle("本周推荐");
  }

  @override
  Widget subTitle(String title) {
    // TODO: implement subTitle
    return super.subTitle("送你一天无限卡，全场书籍免费读");
  }

  @override
  bottomContent() {
    // TODO: implement bottomContent
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(top: 20),
        child: Image.network("https://www.devio.org/io/flutter_beauty/card_1.jpg",
        fit: BoxFit.cover),

      ),
    );
  }
}