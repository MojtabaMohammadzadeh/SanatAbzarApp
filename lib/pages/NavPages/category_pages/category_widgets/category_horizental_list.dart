import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:untitled/pages/NavPages/category_pages/category_subpages/category_modal.dart';

class CategoryHorizentalList extends StatelessWidget {
  const CategoryHorizentalList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      height: 15.h,
      color: Colors.cyan,
      child: ListView.builder(
          reverse: true,
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder:(context,index){
            return GestureDetector(
              onTap: (){
                showModalBottomSheet(
                    isScrollControlled: true,
                    context: context, builder: (context)=> CategoryModal());
              },
              child: Container(
                margin: EdgeInsets.only(right: 5,left: 5, ),
                width: 25.h,
                height: 18.h,
                color: Colors.amber,
              ),
            );
          }),
    );
  }
}
