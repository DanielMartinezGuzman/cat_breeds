import 'package:cat_breeds/src/shared/typing/enums/country.dart';

abstract class BaseBreed {
  BaseBreed.fromJson(Map<String, dynamic> json)
    : id = json['id'] ?? '',
      name = json['name'] ?? '',
      originCountry = json['origin'] ?? '',
      intelligence = json['intelligence'] ?? 0,
      countryCode = Country.fromString(json['country_code'] ?? '');

  final String id;
  final String name;
  final String originCountry;
  final int intelligence;
  final Country countryCode;
}
