import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:untitled/Widgets/App_Large_Text.dart';
import 'package:untitled/pages/NavPages/home_page/home_page.dart';



class Navigationdrawer extends StatelessWidget {
  const Navigationdrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
//Header of Drawer
    Widget buildHeader(BuildContext context) => Container(
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top
      ),
      color: Colors.blue.shade700,
      child: Column(
        children: [
        CircleAvatar(
          radius: 52,
          backgroundImage: AssetImage('assets/img/profile-img.jpg'),
        ),
          SizedBox(height: 15,),
          AppLargeText(text: "Mojtaba Mohammadzadeh",color: Colors.white54,size: 18,),
          SizedBox(height: 15,),


        ],
      ),
    );

    //Items of Drawer
    Widget buildMenuItems(BuildContext context) => Container(
      padding: EdgeInsets.all(24),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(

          children: [
            ListTile(
              leading: const Icon(Icons.home_outlined),
              title: const Text('خانه'),
              onTap: (){
                Get.to(HomePage());},

            ),

            ListTile(
              leading: const Icon(Icons.shopping_bag_outlined),
              title: const Text('سبد خرید'),
              onTap: ()=>{},

            ),

            ListTile(
              leading: const Icon(Icons.contact_mail_outlined),
              title: const Text('تماس با ما'),
              onTap: ()=>{},

            ),

            ListTile(
              leading: const Icon(Icons.exit_to_app_outlined),
              title: const Text('خروج'),
              onTap: ()=>{},

            ),

          ],
        ),
      ),
    );


    return Drawer(

      child:SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildHeader(context),
            buildMenuItems(context),
          ],
        ),
      ),
    );


  }
}
