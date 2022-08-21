import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:untitled/pages/NavPages/home_page/home_page_subpages/all_brands.dart';
import 'package:untitled/pages/NavPages/home_page/home_page_subpages/single_brand.dart';

class AllCart extends StatelessWidget {
  final String title;
  final String link;
  final String image;
  final List fields;
  const AllCart({Key? key,
    required this.title,
    required this.link,
    required this.image,
    required this.fields,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.to(SingleBrand());
      },
      child: Container(
        margin: EdgeInsets.all(15),
        width: 40.w,
        height: 20.h,

        decoration:BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color(0xffF1F1F1),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              offset: const Offset(
                1.0,
                5.0,
              ),
              spreadRadius: 1,
              blurRadius: 3,
            ), //BoxShadow
            //BoxShadow
          ],
        ),
        child: Column(
          children: [
            Container(
              width: 25.w,
              height: 10.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(this.image),
                  fit: BoxFit.fitWidth,
                )
              ),
            ),
            Text('رونیکس',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),),
            SizedBox(height: 5,),
            Text(' محصولات 3535 مورد',style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400,color: Colors.black45),),
          ],
        ),
      ),
    );
  }
}
