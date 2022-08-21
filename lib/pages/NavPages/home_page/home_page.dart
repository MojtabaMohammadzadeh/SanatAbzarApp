import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:untitled/pages/NavPages/home_page/api_test.dart';
import 'package:untitled/pages/NavPages/home_page/home_page_widgets/horizontal_list_viwe.dart';
import 'package:untitled/Widgets/image_slider.dart';
import 'package:untitled/pages/NavPages/home_page/home_page_widgets/tab_bar.dart';
import 'package:untitled/Widgets/title_widget.dart';
import 'package:untitled/pages/NavPages/home_page/home_page_widgets/wrap_list_viwe.dart';


import '../../../Widgets/App_Large_Text.dart';
import '../../../Widgets/search_widget.dart';
import 'home_page_widgets/last_prices.dart';

class HomePage extends StatefulWidget {


  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  TextEditingController textController = TextEditingController();
  String query = '';



  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            Container(
              width:100.w,
              height: 40.h,
              child: const ApiTest(),
            ),
            buildSearch(),
            const ImageSlider(),
            TabBarWidget(),
            SizedBox(height: 20,),
            TitleWidget(title: 'پربازدیدها', bottomText: 'موارد بیشتر',link: '/allbrands',),
            SizedBox(height: 5,),
            const Divider(
              height: 2,
              thickness: 1,
              indent: 10,

              endIndent: 10,
              color: Colors.black12,
            ),
            const SizedBox(height: 5,),
            HorizontalListWidget(),
            const SizedBox(height: 15,),


            LastPrices(),
            const SizedBox(height: 15,),
            TitleWidget(title: 'جدیدترین ها', bottomText: 'موارد بیشتر', link: '/allbrands',),
             Divider( height: 2, thickness: 1, indent: 10, endIndent: 10, color: Colors.black12,),
            const SizedBox(height: 15,),
            HorizontalListWidget(),
            const SizedBox(height: 25,),
            ImageSlider(),
            const SizedBox(height: 25,),

            TitleWidget(title: 'همه', bottomText: 'موارد بیشتر',link: '/allbrands',),
            Divider( height: 2, thickness: 1, indent: 10, endIndent: 10, color: Colors.black12,),

            WrapListViwe(),

          ],
        ),

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