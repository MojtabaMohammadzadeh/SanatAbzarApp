import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:untitled/pages/NavPages/category_pages/category_subpages/category_subpage.dart';

class CategoryCart extends StatelessWidget {
  final String title;
  final String link;
  final String image;
  final List fields;
  CategoryCart( {Key? key,
    required this.title,
    required this.link,
    required this.image,
    required this.fields,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
        Get.to(CategorySubPage());
      },
      child: Container(
        // Widget for Portrait
        margin: EdgeInsets.all(15),
        width: 35.w,
        height: 30.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color(0xff182f41),

          boxShadow: [
            //background color of box
            BoxShadow(
              color: Colors.black54.withOpacity(0.2),
              blurRadius: 15, // soften the shadow
              spreadRadius: 2, //extend the shadow
              offset: Offset(
                5, // Move to right 10  horizontally
                5, // Move to bottom 10 Vertically
              ),
            ),

          ],
        ),


        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                width: 25.w,
                height: 25.w,
                margin: EdgeInsets.only(top: 4.w),

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                  color: Colors.white,

                  boxShadow: [
                    //background color of box
                    BoxShadow(
                      color: Colors.black54.withOpacity(0.3),
                      blurRadius: 5, // soften the shadow
                      spreadRadius: 1, //extend the shadow
                      offset: Offset(
                        2, // Move to right 10  horizontally
                        5, // Move to bottom 10 Vertically
                      ),
                    )
                  ],
                )

            ),

            Text(this.title, style: TextStyle(fontSize:14,color: Colors.white),textAlign: TextAlign.center,),
            SizedBox(height:5,)
          ],
        ),
      ),
    );
  }
  myNavigator(context, String title){

  }
}
