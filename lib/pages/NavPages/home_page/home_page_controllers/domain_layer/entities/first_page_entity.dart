




import 'package:equatable/equatable.dart';

import '../../data_layer/models/first_page_model.dart';

class FirstPageEntities extends Equatable{
 final int? userId;
 final int? id;
 final String? title;
 final bool? completed;

 const FirstPageEntities({this.userId, this.id, this.title, this.completed});

  @override
  // TODO: implement props
  List<Object?> get props => [title, userId, id];
}