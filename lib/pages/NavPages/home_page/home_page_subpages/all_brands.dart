import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:untitled/pages/NavPages/home_page/home_page_subpages/single_brand.dart';
import '../../../../Widgets/navigation_drawer.dart';
import '../../../../Widgets/search_widget.dart';

class AllBrands extends StatelessWidget {
  const AllBrands({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AllBrands'),
        centerTitle: true,
        backgroundColor: Color(0xff0F1B6D),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildSearch(),
          Expanded(
              child:ListView.builder(

                  itemCount: 30,
                  itemBuilder:(context,index){
                    return GestureDetector(
                      onTap: (){
                        Get.to(SingleBrand());
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 15, right: 10,left: 10),
                        width: 85.w,
                        height: 15.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xfff5f5f5),
                          // border: Border.all(width: 1, color: Colors.black45),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black45,
                              offset: Offset(2.0, 3.0),
                              blurRadius: 3,
                              spreadRadius: 1,
                            ),
                          ],




                        ),
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.all(3.w),
                                width:25.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: AssetImage('assets/img/ronix-png.png')
                                  ),
                                ),
                                
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('رونیکس',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
                                  SizedBox(height: 15,),
                                  Text('تعداد محصول 35 مورد',style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black45),),



                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  } ), ),
        ],
      ),
    );
  }


  Widget buildSearch() =>
      SearchWidget(
        text: '',
        hintText: '...جستجو',
        onChanged: searchFunc,
      );

  void searchFunc (String query){

  }
}
