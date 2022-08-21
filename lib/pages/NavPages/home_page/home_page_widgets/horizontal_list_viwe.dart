import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:untitled/pages/NavPages/home_page/home_page_subpages/single_brand.dart';

import '../home_page_subpages/all_brands.dart';

class HorizontalListWidget extends StatelessWidget {
  const HorizontalListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      height: 15.h,

      child: ListView.builder(
        reverse: true,
        scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder:(context,index){
            return GestureDetector(
              onTap: (){
                Get.to(()=>SingleBrand(), transition: Transition.zoom);
              },
              child: Container(
                margin: EdgeInsets.only(left: 10 ),
                width: 55.w,
                height: 18.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                        width: 1,
                        color: Colors.black38,
                    )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('رونیکس',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),),
                        SizedBox(height: 10,),
                        Text(' محصولات 3535 مورد',style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400,color: Colors.black45),),

                      ],
                    ),
                    Container(
                      width: 20.w,
                      height: 10.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage('assets/img/proxy.jpg'),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
