import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Widgets/title_widget.dart';
import 'package:untitled/pages/NavPages/category_pages/category_widgets/category_horizental_list.dart';

import '../../../../Widgets/navigation_drawer.dart';

class CategorySubPage extends StatelessWidget {
  const CategorySubPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('عنوان دسته بندی'),
        centerTitle: true,
      ),
      endDrawer: const Navigationdrawer(),
      body: ListView(
        children: [
          SizedBox(height: 25,),
          Text('دسته بندس'),
          CategoryHorizentalList(),
          SizedBox(height: 25,),

        ],
      ),
    );
  }
}
