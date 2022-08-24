part of 'home_bloc.dart';

class HomeState extends Equatable{
  final HomeStatus homestatus;

  const HomeState({required this.homestatus});

  HomeState copyWith({HomeStatus? newHomeStatus}){
    return HomeState(
        homestatus: newHomeStatus?? homestatus);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [homestatus];
}