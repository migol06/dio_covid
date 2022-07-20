import 'package:bloc/bloc.dart';
import 'package:dio_mig/api_repository.dart';
import 'package:dio_mig/bloc/covid_state.dart';
import 'package:dio_mig/model/covidmodel.dart';
import 'package:equatable/equatable.dart';

part 'covid_event.dart';
// part 'covid_state.dart';

class CovidBloc extends Bloc<CovidEvent, CovidState> {
  CovidBloc() : super(CovidInitial()) {
    final ApiRepository apiRepository = ApiRepository();
    on<CovidEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<GetCovidList>((event, emit) async {
      try {
        emit(CovidLoading());
        final mList = await apiRepository.fetchCovidList();
        emit(CovidLoaded<CovidModel>(mList));
      } catch (e) {
        emit(CovidError(e.toString()));
      }
    });
  }
}
