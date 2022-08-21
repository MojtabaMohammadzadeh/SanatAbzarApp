



import 'package:untitled/pages/NavPages/home_page/home_page_controllers/domain_layer/entities/first_page_entity.dart';
import 'package:untitled/pages/NavPages/home_page/home_page_controllers/domain_layer/repository/home_page_repository.dart';
import 'package:untitled/pages/core/resources/data_state.dart';

class HomePageUseCase{
  final HomePageRepository homeRypo;
  HomePageUseCase(this.homeRypo);

  Future<DataState<FirstPageEntities>> call(){
    return homeRypo.fetchHomePageData();
  }

}