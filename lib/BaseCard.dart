import 'package:flutter/material.dart';

class BaseCard extends StatefulWidget {
  @override
  BaseCardState createState() => BaseCardState();
}

class BaseCardState extends State<BaseCard> {
  Color subTitleColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return PhysicalModel(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(6),
      clipBehavior: Clip.antiAlias,//抗锯齿
      child: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          children: <Widget>[
            topContent(),
            bottomContent()
          ],
        ),
      ),
    );//圆角
  }

  topContent() {
    return Padding(padding: EdgeInsets.only(left: 20,top: 20,right: 20,bottom: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            topTitle("推荐和头部")
          ],
        ),
        subTitle("本周推荐")
      ],
    ));
  }

  bottomContent() {
    return Container();
  }

  Widget subTitle(String title) {
    return Padding(padding: EdgeInsets.only(top :5),
    child: Text(title,style:TextStyle(fontSize: 11,color: subTitleColor) ,),);
  }

  topTitle(String title) {
    return Text(title,style: TextStyle(fontSize: 22),);
  }
}
