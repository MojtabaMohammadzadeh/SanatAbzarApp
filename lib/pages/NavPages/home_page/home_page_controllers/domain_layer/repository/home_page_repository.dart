


import 'package:untitled/pages/NavPages/home_page/home_page_controllers/domain_layer/entities/first_page_entity.dart';
import 'package:untitled/pages/core/resources/data_state.dart';

abstract class HomePageRepository {

  Future <DataState <FirstPageEntities>>fetchHomePageData();
}