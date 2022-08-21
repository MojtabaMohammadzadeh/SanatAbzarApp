
import 'package:flutter/material.dart';
import 'package:untitled/Widgets/navigation_drawer.dart';
import 'package:untitled/pages/NavPages/category_pages/category_page.dart';
import 'package:untitled/pages/NavPages/home_page/home_page.dart';
import 'package:untitled/pages/NavPages/news_pages/news_page.dart';
import 'package:untitled/pages/NavPages/shop_pages/store_page.dart';



class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    HomePage(),
    StorePage(),
    CategoryPage(),
    NewsPage(),
  ];
  int currentIndex = 0;
  void onTap(int index){
    setState((){
      currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('صنعت ابزار',style: TextStyle(fontWeight:FontWeight.w500)),
        backgroundColor: Color(0xff0F1B6D),
        actions: [

        ],

      ),
      endDrawer: const Navigationdrawer(),

      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(label:"خانه" ,icon: Icon(Icons.home_rounded)),
          BottomNavigationBarItem(label:"فروشگاه" ,icon: Icon(Icons.shopping_bag)),
          BottomNavigationBarItem(label:"دسته بندی" ,icon: Icon(Icons.apps)),
          BottomNavigationBarItem(label:"اخبار" ,icon: Icon(Icons.newspaper_rounded)),
        ],
      ),

    );
  }
}
