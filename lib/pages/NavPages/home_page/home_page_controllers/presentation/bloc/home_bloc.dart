import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:untitled/pages/NavPages/home_page/home_page_controllers/presentation/bloc/home_satus.dart';
import 'package:untitled/pages/core/resources/data_state.dart';

import '../../domain_layer/usecase/home_use_case.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomePageUseCase homepageUseCase;
  HomeBloc(this.homepageUseCase) : super(HomeState(homestatus: HomeLoading())) {
    on<LoadHomePage>((event, emit) async {
      // TODO: implement event handler
      emit(state.copyWith(newHomeStatus: HomeLoading()));
      DataState dataState = await homepageUseCase();

      if (dataState == DataSuccess){
        emit (state.copyWith(newHomeStatus: HomeCompleted(dataState.data)));
      }
      if (dataState == DataFailed){
        emit(state.copyWith(newHomeStatus: HomeError(dataState.error!)));
      }
    });
  }
}
