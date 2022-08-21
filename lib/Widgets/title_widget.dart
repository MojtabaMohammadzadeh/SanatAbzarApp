import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:untitled/pages/NavPages/home_page/home_page_subpages/all_brands.dart';

class TitleWidget extends StatelessWidget {

  final String title;
  final String bottomText, link;
  const TitleWidget({
    Key? key,
    required this.bottomText,
    required this.title,
    required this.link,


  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10, left: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          GestureDetector(
            onTap: (){
              Get.toNamed(this.link);
            },
            child: Text(
                this.bottomText
            ),
          ),
          Text(
            this.title
          ),

        ],
      ),
    );
  }
}
