import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'countrie.dart';
import 'global.dart';

class CovidModel {
  final Global global;
  final List<Countrie> countries;
  final String date;
  CovidModel({
    required this.global,
    required this.countries,
    required this.date,
  });

  CovidModel copyWith({
    Global? global,
    List<Countrie>? countries,
    String? date,
  }) {
    return CovidModel(
      global: global ?? this.global,
      countries: countries ?? this.countries,
      date: date ?? this.date,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'Global': global.toMap(),
      'Countries': countries.map((x) => x.toMap()).toList(),
      'Date': date,
    };
  }

  factory CovidModel.fromMap(Map<String, dynamic> map) {
    return CovidModel(
      global: Global.fromMap(map['Global'] as Map<String, dynamic>),
      countries: List<Countrie>.from(
        (map['Countries'] as List<int>).map<Countrie>(
          (x) => Countrie.fromMap(x as Map<String, dynamic>),
        ),
      ),
      date: map['Date'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory CovidModel.fromJson(String source) =>
      CovidModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'CovidModel(Global: $Global, Countries: $countries, Date: $date)';

  @override
  bool operator ==(covariant CovidModel other) {
    if (identical(this, other)) return true;

    return other.global == global &&
        listEquals(other.countries, countries) &&
        other.date == date;
  }

  @override
  int get hashCode => global.hashCode ^ countries.hashCode ^ date.hashCode;
}
