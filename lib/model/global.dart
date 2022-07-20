import 'dart:convert';

class Global {
  final int newConfirmed;
  final int totalConfirmed;
  final int newDeaths;
  final int totalDeaths;
  final int newRecovered;
  final int totalRecovered;
  Global({
    required this.newConfirmed,
    required this.totalConfirmed,
    required this.newDeaths,
    required this.totalDeaths,
    required this.newRecovered,
    required this.totalRecovered,
  });

  Global copyWith({
    int? newConfirmed,
    int? totalConfirmed,
    int? newDeaths,
    int? totalDeaths,
    int? newRecovered,
    int? totalRecovered,
  }) {
    return Global(
      newConfirmed: newConfirmed ?? this.newConfirmed,
      totalConfirmed: totalConfirmed ?? this.totalConfirmed,
      newDeaths: newDeaths ?? this.newDeaths,
      totalDeaths: totalDeaths ?? this.totalDeaths,
      newRecovered: newRecovered ?? this.newRecovered,
      totalRecovered: totalRecovered ?? this.totalRecovered,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'NewConfirmed': newConfirmed,
      'TotalConfirmed': totalConfirmed,
      'NewDeaths': newDeaths,
      'TotalDeaths': totalDeaths,
      'NewRecovered': newRecovered,
      'TotalRecovered': totalRecovered,
    };
  }

  factory Global.fromMap(Map<String, dynamic> map) {
    return Global(
      newConfirmed: map['NewConfirmed'].toInt() as int,
      totalConfirmed: map['TotalConfirmed'].toInt() as int,
      newDeaths: map['NewDeaths'].toInt() as int,
      totalDeaths: map['TotalDeaths'].toInt() as int,
      newRecovered: map['NewRecovered'].toInt() as int,
      totalRecovered: map['TotalRecovered'].toInt() as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Global.fromJson(String source) =>
      Global.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Global(NewConfirmed: $newConfirmed, TotalConfirmed: $totalConfirmed, NewDeaths: $newDeaths, TotalDeaths: $totalDeaths, NewRecovered: $newRecovered, TotalRecovered: $totalRecovered)';
  }

  @override
  bool operator ==(covariant Global other) {
    if (identical(this, other)) return true;

    return other.newConfirmed == newConfirmed &&
        other.totalConfirmed == totalConfirmed &&
        other.newDeaths == newDeaths &&
        other.totalDeaths == totalDeaths &&
        other.newRecovered == newRecovered &&
        other.totalRecovered == totalRecovered;
  }

  @override
  int get hashCode {
    return newConfirmed.hashCode ^
        totalConfirmed.hashCode ^
        newDeaths.hashCode ^
        totalDeaths.hashCode ^
        newRecovered.hashCode ^
        totalRecovered.hashCode;
  }
}
