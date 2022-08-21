part of 'home_bloc.dart';

class HomeState{
  HomeStatus homestatus;

  HomeState({required this.homestatus});

  HomeState copyWith({HomeStatus? newHomeStatus}){
    return HomeState(
        homestatus: newHomeStatus?? homestatus);
  }
}