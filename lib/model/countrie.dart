import 'dart:convert';

class Countrie {
  final String country;
  final String countryCode;
  final String slug;
  final int newConfirmed;
  final int totalConfirmed;
  final int newDeaths;
  final int totalDeaths;
  final int newRecovered;
  final int totalRecovered;
  final String date;
  Countrie({
    required this.country,
    required this.countryCode,
    required this.slug,
    required this.newConfirmed,
    required this.totalConfirmed,
    required this.newDeaths,
    required this.totalDeaths,
    required this.newRecovered,
    required this.totalRecovered,
    required this.date,
  });

  Countrie copyWith({
    String? country,
    String? countryCode,
    String? slug,
    int? newConfirmed,
    int? totalConfirmed,
    int? newDeaths,
    int? totalDeaths,
    int? newRecovered,
    int? totalRecovered,
    String? date,
  }) {
    return Countrie(
      country: country ?? this.country,
      countryCode: countryCode ?? this.countryCode,
      slug: slug ?? this.slug,
      newConfirmed: newConfirmed ?? this.newConfirmed,
      totalConfirmed: totalConfirmed ?? this.totalConfirmed,
      newDeaths: newDeaths ?? this.newDeaths,
      totalDeaths: totalDeaths ?? this.totalDeaths,
      newRecovered: newRecovered ?? this.newRecovered,
      totalRecovered: totalRecovered ?? this.totalRecovered,
      date: date ?? this.date,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'Country': country,
      'CountryCode': countryCode,
      'Slug': slug,
      'NewConfirmed': newConfirmed,
      'TotalConfirmed': totalConfirmed,
      'NewDeaths': newDeaths,
      'TotalDeaths': totalDeaths,
      'NewRecovered': newRecovered,
      'TotalRecovered': totalRecovered,
      'Date': date,
    };
  }

  factory Countrie.fromMap(Map<String, dynamic> map) {
    return Countrie(
      country: map['Country'] as String,
      countryCode: map['CountryCode'] as String,
      slug: map['Slug'] as String,
      newConfirmed: map['NewConfirmed'].toInt() as int,
      totalConfirmed: map['TotalConfirmed'].toInt() as int,
      newDeaths: map['NewDeaths'].toInt() as int,
      totalDeaths: map['TotalDeaths'].toInt() as int,
      newRecovered: map['NewRecovered'].toInt() as int,
      totalRecovered: map['TotalRecovered'].toInt() as int,
      date: map['Date'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Countrie.fromJson(String source) =>
      Countrie.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Countrie(Country: $country, CountryCode: $countryCode, Slug: $slug, NewConfirmed: $newConfirmed, TotalConfirmed: $totalConfirmed, NewDeaths: $newDeaths, TotalDeaths: $totalDeaths, NewRecovered: $newRecovered, TotalRecovered: $totalRecovered, Date: $date)';
  }

  @override
  bool operator ==(covariant Countrie other) {
    if (identical(this, other)) return true;

    return other.country == country &&
        other.countryCode == countryCode &&
        other.slug == slug &&
        other.newConfirmed == newConfirmed &&
        other.totalConfirmed == totalConfirmed &&
        other.newDeaths == newDeaths &&
        other.totalDeaths == totalDeaths &&
        other.newRecovered == newRecovered &&
        other.totalRecovered == totalRecovered &&
        other.date == date;
  }

  @override
  int get hashCode {
    return country.hashCode ^
        countryCode.hashCode ^
        slug.hashCode ^
        newConfirmed.hashCode ^
        totalConfirmed.hashCode ^
        newDeaths.hashCode ^
        totalDeaths.hashCode ^
        newRecovered.hashCode ^
        totalRecovered.hashCode ^
        date.hashCode;
  }
}
