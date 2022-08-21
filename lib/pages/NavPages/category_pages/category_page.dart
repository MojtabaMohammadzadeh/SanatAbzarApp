import 'package:flutter/cupertino.dart';

import '../../../Widgets/App_Large_Text.dart';
import 'category_widgets/category_cart.dart';
class Choice {
  final String title;
  final String link, image;
  final List fields;
  Choice({required this.title, required this.link, required this.image, required this.fields});

}
class CategoryPage extends StatelessWidget {
   CategoryPage({Key? key}) : super(key: key);
  List<Choice> ctegory =  <Choice>[
    Choice(title: ' جوش و برش', link: '/resturant', image: '', fields: []),
    Choice(title: 'فروشگاه های ابزارآلات و تجهیزات صنعتی', link: '/order', image: '',fields: [ ]),
    Choice(title: 'ابزار و تجهیزات ساختمانی',link: '/order', image: '',fields: []),
    Choice(title: 'تولیدی ابزارآلات و تجهیزات صنعتی', link: '/order', image: '',fields: []),
    Choice(title: 'ابزار تراش', link: '/order', image: '',fields: []),
    Choice(title: 'ابزارآلات کمپرسور بادی', link: '/order', image: '',fields: []),
    Choice(title: 'چسب و رنگ',link: '/order', image: '',fields: []),
    Choice(title: 'الکتروموتور و گیربکس', link: '/order', image: '',fields: []),

  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Align(
          alignment: Alignment.center,
          child: Wrap(

              children: List.generate(ctegory.length, (index){
                return CategoryCart(title: ctegory[index].title, link: ctegory[index].link, image:ctegory[index].image ,fields:ctegory[index].fields);
              },)
          ),
        ),
      ],
    );
  }
}
