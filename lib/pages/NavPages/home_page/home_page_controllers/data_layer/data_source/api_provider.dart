

import 'package:dio/dio.dart';
import 'package:untitled/pages/core/utils/constants.dart';

class ApiProvider {
  final Dio _dio =Dio();

 Future<dynamic> callFirstPage() async {

    var response=await _dio.get(Constants.myUrl);

    return response;
  }

}