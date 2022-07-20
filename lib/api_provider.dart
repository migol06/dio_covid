import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:dio_mig/model/covidmodel.dart';

class ApiProvider {
  String url = 'https://api.covid19api.com/summary';

  final Dio _dio = Dio(BaseOptions(
    baseUrl: 'https://api.covid19api.com/summary',
    connectTimeout: 5000,
    receiveTimeout: 2000,
  ));

  Future<CovidModel> fetchCovidList() async {
    try {
      Response response = await _dio.get(url);
      log(response.data.runtimeType.toString());
      return CovidModel.fromJson(response.data);
    } catch (error) {
      log(error.toString());
    }
    throw 'Error';
  }
}
