

import 'package:flutter/material.dart';
import 'package:untitled/pages/NavPages/home_page/home_page_controllers/domain_layer/entities/first_page_entity.dart';


@immutable
abstract class HomeStatus{

}

class HomeLoading extends HomeStatus{

}

class HomeCompleted extends HomeStatus{
  final FirstPageEntities firstPageEntities;

  HomeCompleted(this.firstPageEntities);

}

class HomeError extends HomeStatus{
  final String messageerror;

  HomeError(this.messageerror);
}