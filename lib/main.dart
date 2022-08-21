// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:untitled/pages/NavPages/category_pages/category_subpages/category_subpage.dart';
import 'package:untitled/pages/NavPages/home_page/home_page.dart';
import 'package:untitled/pages/NavPages/home_page/home_page_controllers/presentation/bloc/home_bloc.dart';
import 'package:untitled/pages/NavPages/home_page/home_page_subpages/all_brands.dart';
import 'package:untitled/pages/NavPages/home_page/home_page_subpages/single_brand.dart';
import 'package:untitled/pages/NavPages/home_page/home_page_subpages/product_details.dart';
import 'package:untitled/pages/NavPages/shop_pages/shop_subpages/shop_all_products.dart';
import 'package:untitled/pages/NavPages/shop_pages/shop_subpages/shop_products_details.dart';
import 'package:untitled/pages/main_page.dart';
import 'package:untitled/pages/wellcome_page.dart';

import 'locator.dart';

void main() async {
  await setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
        builder: (context, orientation, screenType) {
      return GetMaterialApp(
      title: 'Welcome to Flutter',
          theme: ThemeData(
            fontFamily: 'IRSans',
            primarySwatch: Colors.blue,
          ),
       getPages: [
         GetPage(name: '/home', page:()=> HomePage()),
         GetPage(name: '/allbrands', page:()=> AllBrands()),
         GetPage(name: '/singlebrand', page:()=> SingleBrand()),
         GetPage(name: '/subcategory', page:()=> CategorySubPage()),
         GetPage(name: '/productsdetails', page:()=> ShopProductsDetails()),
         GetPage(name: '/productdetails', page:()=> ProductDetails()),
         GetPage(name: '/shopallproducts', page:()=> ShopAllProducts()),


       ],
      home: MultiBlocProvider(
        providers: [
          BlocProvider(create: (_)=> locater<HomeBloc>()),
        ],
        child:const MainPage(),
      )
    );
    });
}
}