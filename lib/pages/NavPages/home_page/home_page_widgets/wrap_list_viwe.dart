import 'package:flutter/cupertino.dart';

import 'all_carts.dart';

class WrapListViwe extends StatefulWidget {
   WrapListViwe({Key? key}) : super(key: key);

  @override
  State<WrapListViwe> createState() => _WrapListViweState();
}

class _WrapListViweState extends State<WrapListViwe> {
  List<Choice> choices =  <Choice>[
    Choice(title: 'عنوان', link: '/link', image: 'assets/img/ronix-png.png', fields: []),
    Choice(title: 'عنوان', link: '/link', image: 'assets/img/ronix-png.png', fields: []),
    Choice(title: 'عنوان', link: '/link', image: 'assets/img/ronix-png.png', fields: []),
    Choice(title: 'عنوان', link: '/link', image: 'assets/img/ronix-png.png''', fields: []),
    Choice(title: 'عنوان', link: '/link', image: 'assets/img/ronix-png.png', fields: []),
    Choice(title: 'عنوان', link: '/link', image: 'assets/img/ronix-png.png', fields: []),
    Choice(title: 'عنوان', link: '/link', image: 'assets/img/ronix-png.png', fields: []),
    Choice(title: 'عنوان', link: '/link', image: 'assets/img/ronix-png.png', fields: []),
    Choice(title: 'عنوان', link: '/link', image: 'assets/img/ronix-png.png', fields: []),
    Choice(title: 'عنوان', link: '/link', image: 'assets/img/ronix-png.png', fields: []),
  ];

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Wrap(

          children: List.generate(choices.length, (index){
            return AllCart(title: choices[index].title, link: choices[index].link, image:choices[index].image ,fields:choices[index].fields);
          },)
      ),
    );
  }
}


class Choice {
  final String title;
  final String link, image;
  final List fields;
  Choice({required this.title, required this.link, required this.image, required this.fields});

}