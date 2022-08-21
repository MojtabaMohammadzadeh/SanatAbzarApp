import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../news_controller/tabbar_feed.dart';

class buildTabbarNews extends StatelessWidget {
  buildTabbarNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 35.0,
      margin: EdgeInsets.only(top: 16, right: 10),
      child: ListView.builder(
        reverse: true,
        itemCount: categoriesData.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                },
                child: Container(
                  margin: EdgeInsets.only(right: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff182f41),

                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 8.0,
                  ),
                  child: Text(
                    categoriesData[index].title,
                    style: TextStyle(
                      color:  Colors.white,

                    ),
                  ),
                ),
              );
            }) ,
      );

  }
}
