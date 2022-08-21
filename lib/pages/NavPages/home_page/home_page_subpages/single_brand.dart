import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:untitled/pages/NavPages/home_page/home_page_widgets/last_prices.dart';
import 'package:untitled/pages/NavPages/home_page/home_page_widgets/single_list_viwe.dart';

import '../../../../Widgets/image_slider.dart';
import '../../../../Widgets/navigation_drawer.dart';
import '../../../../Widgets/title_widget.dart';
import '../home_page_widgets/contact_about_us.dart';
import '../home_page_widgets/horizontal_list_viwe.dart';

class SingleBrand extends StatelessWidget {
  const SingleBrand({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SingleBrand'),
        centerTitle: true,
        backgroundColor: Color(0xff0F1B6D),
      ),

      body: Column(
        children: [
          Expanded(
              child:ListView(
                children: [
                  SizedBox(height: 15,),
                  ImageSlider(),
                  SizedBox(height: 20,),
                  LastPrices(),
                  SizedBox(height: 15,),
                  Text('دسته بندی 1'),
                  Divider(
                    height: 2,
                    thickness: 1,
                    indent: 10,

                    endIndent: 10,
                    color: Colors.black12,
                  ),
                  SizedBox(height: 5,),
                  SingleListViwe(),
                ],
              ),

          ),


          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(right: 20, left: 20),
                child: ElevatedButton.icon(
                  onPressed:() {
                    showModalBottomSheet(
                        isScrollControlled: true,
                        context: context, builder: (context)=> ContactUs());
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Color(0xff0F1B6D)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: new BorderRadius.circular(15))),
                  ),
                    icon: const Icon(Icons.person),
                    label: const Text(
                        "درباره ما"
                    ),

                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 20,left: 20),
                child: ElevatedButton.icon(
                  onPressed:() {
                    showModalBottomSheet(
                        isScrollControlled: true,
                        context: context, builder: (context)=> ContactUs());
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Color(0xff0F1B6D)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: new BorderRadius.circular(15))),

                  ),
                  icon: const Icon(Icons.phone),
                  label: const Text(
                      "تماس با ما"
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 15,),
        ],
      ),
    );
  }
}
