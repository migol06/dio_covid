import 'package:dio_mig/api_provider.dart';
import 'package:dio_mig/model/covidmodel.dart';

class ApiRepository {
  final _provider = ApiProvider();

  Future<CovidModel> fetchCovidList() async {
    return await _provider.fetchCovidList();
  }
}
