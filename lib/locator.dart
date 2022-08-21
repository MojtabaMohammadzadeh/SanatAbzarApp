


import 'package:get_it/get_it.dart';
import 'package:untitled/pages/NavPages/home_page/home_page_controllers/data_layer/data_source/api_provider.dart';
import 'package:untitled/pages/NavPages/home_page/home_page_controllers/data_layer/repository/repository_impl.dart';
import 'package:untitled/pages/NavPages/home_page/home_page_controllers/domain_layer/repository/home_page_repository.dart';
import 'package:untitled/pages/NavPages/home_page/home_page_controllers/domain_layer/usecase/home_use_case.dart';
import 'package:untitled/pages/NavPages/home_page/home_page_controllers/presentation/bloc/home_bloc.dart';

GetIt locater = GetIt.instance;

setup(){
  locater.registerSingleton<ApiProvider>(ApiProvider());

  ////repository
  locater.registerSingleton<HomePageRepository>(HomePageReopIml(locater()));

  ///usecase
  locater.registerSingleton<HomePageUseCase>(HomePageUseCase(locater()));

  ///bloc
  locater.registerSingleton<HomeBloc>(HomeBloc(locater()));
}