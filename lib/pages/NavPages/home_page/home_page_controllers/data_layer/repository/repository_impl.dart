
import 'package:dio/dio.dart';

import 'package:untitled/pages/NavPages/home_page/home_page_controllers/data_layer/data_source/api_provider.dart';
import 'package:untitled/pages/NavPages/home_page/home_page_controllers/data_layer/models/first_page_model.dart';
import 'package:untitled/pages/NavPages/home_page/home_page_controllers/domain_layer/entities/first_page_entity.dart';
import 'package:untitled/pages/NavPages/home_page/home_page_controllers/domain_layer/repository/home_page_repository.dart';
import 'package:untitled/pages/core/resources/data_state.dart';

class HomePageReopIml extends HomePageRepository{
  ApiProvider apiProvider;


  HomePageReopIml(this.apiProvider);

  @override
  Future<DataState<FirstPageEntities>> fetchHomePageData() async {

    try{
      Response response = await apiProvider.callFirstPage();
      if(response.statusCode== 200){

        print('Start');
        FirstPageEntities firstPageEntities = FirstPageModel.fromJson(response.data);
        print('Done');
        return DataSuccess(firstPageEntities);

      }else{
        return DataFailed('Something went wrong. please try again');
      }
    }catch(e){
        return DataFailed('plaese check your connection');
    }
  }

}