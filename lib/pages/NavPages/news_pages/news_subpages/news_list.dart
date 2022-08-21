import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:untitled/pages/NavPages/news_pages/news_subpages/news_modal.dart';

class NewsList extends StatelessWidget {
  const NewsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 25,
        itemBuilder: (context,index){
          return GestureDetector(
            onTap: (){
              showModalBottomSheet(
                  isScrollControlled: true,
                  context: context, builder: (context)=>NewsModal() );
            },
            child: Container(
              width: 80.w,
              height: 15.h,
              color: Colors.red,
              margin: EdgeInsets.only(top: 10,right: 5,left: 5),
            ),
          );
        });
  }
}
