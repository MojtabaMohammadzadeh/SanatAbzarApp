import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


import '../shop_controller/shop_controller.dart';
import '../shop_controller/shop_tab_list.dart';




class ShopTabBarWidget extends StatelessWidget {
  ShopTabBarWidget({Key? key}) : super(key: key);
  ShopController shopController = Get.put(ShopController());
  @override
  Widget build(BuildContext context) {
    return Container(
      height:10.h,
      width: 5.w,

      margin: const EdgeInsets.only(top: 5, right: 10,bottom: 5),
      child: ListView.builder(
        reverse: true,
        itemCount: shopTabs.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GetBuilder<ShopController>(

            builder: (controller){
              return GestureDetector(
                onTap: () {
                  controller.changeCategories(index);
                },
                child: Container(

                  margin: const EdgeInsets.only(right: 8,top: 10,bottom:15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: index == controller.currentIndex
                        ? const Color(0xfff5f5f5)
                        : Colors.transparent,


                    boxShadow: [
                      BoxShadow(
                        color: index == controller.currentIndex
                            ? Colors.grey.withOpacity(0.5)
                            : Colors.transparent,
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
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 10,

                  ),
                  child: Column(

                    children: [

                      Text(
                        shopTabs[index].title,
                        style: TextStyle(
                          fontWeight: index == controller.currentIndex
                              ? FontWeight.w700
                              : FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }) ,
      ),
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

