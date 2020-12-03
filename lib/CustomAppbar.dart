import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _paddingTop = MediaQuery.of(context).padding.top;

    return Container(
      padding: EdgeInsets.fromLTRB(20, 7, 20, 7),
      margin: EdgeInsets.fromLTRB(20, _paddingTop + 10, 20, 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(19), color: Colors.white60),
      child: Row(
        children: [
          Icon(
            Icons.search,
            color: Colors.grey,
          ),
          Expanded(
            child: Text(
                "长安十二时辰",
                style: TextStyle(fontSize: 15, color: Colors.grey)
            )
          ),
          Container(
            width: 1,
            height: 20,
            margin: EdgeInsets.only(right: 13),
            decoration: BoxDecoration(color: Colors.grey),
          ),
          Text(
              "书城",
          style: TextStyle(fontSize: 15),)
        ],
      ),
    );
  }
}
