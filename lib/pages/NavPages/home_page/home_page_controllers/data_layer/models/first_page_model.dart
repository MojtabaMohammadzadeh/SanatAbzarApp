

import '../../domain_layer/entities/first_page_entity.dart';

/// userId : 1
/// id : 2
/// title : "quis ut nam facilis et officia qui"
/// completed : false

class FirstPageModel extends FirstPageEntities {
  FirstPageModel({
    int? userId,
    int? id,
    String? title,
    bool? completed,}) : super(userId:userId, id: id, title:title, completed:completed);

  factory FirstPageModel.fromJson(dynamic json) {

    return FirstPageModel(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      completed: json['completed'],

    );

    // userId = json['userId'];
    // id = json['id'];
    // title = json['title'];
    // completed = json['completed'];
  }
 



}