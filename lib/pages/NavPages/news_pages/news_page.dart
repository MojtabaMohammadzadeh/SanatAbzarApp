import 'package:flutter/cupertino.dart';
import 'package:untitled/pages/NavPages/news_pages/news_subpages/news_list.dart';
import 'package:untitled/pages/NavPages/news_pages/news_widgets/news_tabbar.dart';

import '../../../Widgets/App_Large_Text.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildTabbarNews(),
        SizedBox(height: 15,),
        Expanded(child: NewsList(),),
      ],

    );
  }
}
