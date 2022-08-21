import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:untitled/pages/NavPages/shop_pages/shop_widgets/shop_all_carts.dart';
import 'package:untitled/pages/NavPages/shop_pages/shop_widgets/shop_tabbar.dart';

class ShopAllProducts extends StatelessWidget {
  const ShopAllProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('shopall products'),
        centerTitle: true,
        backgroundColor: Color(0xff0F1B6D),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            width: 100.w,

            child: Text('فروشگاه نیکوکار', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),textDirection: TextDirection.rtl,),

          ),
          ShopTabBarWidget(),
          ShopWrapList(),
        ],
      ),
    );
  }
}
