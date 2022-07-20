import 'package:equatable/equatable.dart';

abstract class CovidState extends Equatable {
  const CovidState();

  @override
  List<Object> get props => [];
}

class CovidInitial extends CovidState {}

class CovidLoading extends CovidState {}

class CovidLoaded<T> extends CovidState {
  final T covidModel;
  const CovidLoaded(this.covidModel);
}

class CovidError extends CovidState {
  final String? message;
  const CovidError(this.message);
}
