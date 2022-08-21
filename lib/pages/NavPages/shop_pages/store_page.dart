import 'package:flutter/cupertino.dart';

import 'package:untitled/Widgets/title_widget.dart';
import 'package:untitled/pages/NavPages/shop_pages/shop_widgets/shop_horizental_list.dart';

import '../../../Widgets/image_slider.dart';
import '../../../Widgets/search_widget.dart';

class StorePage extends StatelessWidget {
  const StorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        buildSearch(),
        ImageSlider(),
        SizedBox(height: 25,),

        const TitleWidget(bottomText: 'همه موارد', title: 'فروشگاه نیکوکار',link: '/shopallproducts',),
        SizedBox(height: 10,),
        ShopHorizentalList(),




      ],
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
