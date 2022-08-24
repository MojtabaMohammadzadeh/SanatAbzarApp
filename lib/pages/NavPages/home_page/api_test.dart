

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/pages/NavPages/home_page/home_page_controllers/presentation/bloc/home_bloc.dart';
import 'package:untitled/pages/NavPages/home_page/home_page_controllers/presentation/bloc/home_satus.dart';

class ApiTest extends StatefulWidget {
  const ApiTest({Key? key}) : super(key: key);

  @override
  State<ApiTest> createState() => _ApiTestState();
}


class _ApiTestState extends State<ApiTest> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<HomeBloc>(context).add(LoadHomePage());
  }


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>
      (builder:(context, state){
        if( state.homestatus is HomeLoading){
          return Container(child: Text('Loading...',style: TextStyle(fontSize: 32,fontWeight: FontWeight.w700),),);
          }
        if( state.homestatus is HomeCompleted){
          return Container(child: Text('completed..',style: TextStyle(fontSize: 32,fontWeight: FontWeight.w700),),);
        }
        if( state.homestatus is HomeError){
          return Container(child: Text('error...',style: TextStyle(fontSize: 32,fontWeight: FontWeight.w700),),);
        }
        return Container();
    });
  }
}
