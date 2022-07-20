import 'package:dio/dio.dart';
import 'package:dio_mig/model/covidmodel.dart';
import 'package:flutter/foundation.dart';

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
      print(response.data.runtimeType);
      return CovidModel.fromJson(response.data);
    } catch (error) {
      print(error);
    }
    throw 'Error';
  }
}
