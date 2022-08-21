import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


import '../home_page_controllers/category_data.dart';


class TabBarWidget extends StatelessWidget {
   TabBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Container(
      height: 6.h,
      width: 5.w,
      margin: EdgeInsets.only(top: 16, right: 10),
      child: ListView.builder(
        reverse: true,
        itemCount: tabsData.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {

               return GestureDetector(
                onTap: () {

                },
                child: Container(
                  margin: EdgeInsets.only(right: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    // color: index == controller.currentIndex
                    //     ? Color(0xfff5f5f5)
                    //     : Colors.transparent,


                    boxShadow: [
                  BoxShadow(
                  // color: index == controller.currentIndex
                  //     ? Colors.grey.withOpacity(0.5)
                  //     : Colors.transparent,
                    offset: const Offset(
                      1.0,
                      5.0,
                    ),
                    spreadRadius: 1,
                    blurRadius: 6,
                  ), //BoxShadow
                  //BoxShadow
                  ],
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 10,

                  ),
                  child: Column(

                    children: [

                      Text(
                        tabsData[index].title,
                        style: TextStyle(
                          // fontWeight: index == controller.currentIndex
                          //     ? FontWeight.w700
                          //     : FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }) ,
      );

    //
    //
    //
    //
    //
    //
    //
    //
    // Container(
    //   margin: EdgeInsets.only(top: 20, bottom: 20),
    //   child: DefaultTabController(
    //     length:3 ,
    //     child: TabBar(
    //       labelColor: Colors.black,
    //       indicatorColor: Colors.grey,
    //
    //       tabs: [
    //
    //         Tab(text: 'ابزار', icon: Icon(Icons.construction_outlined),),
    //         Tab(text: 'صنعت',icon: Icon(Icons.precision_manufacturing),),
    //         Tab(text: 'ساختمان',icon: Icon(Icons.apartment),),
    //
    //
    //       ],
    //     ),
    //   ),
    // );

  }
}

