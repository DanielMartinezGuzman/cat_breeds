import 'dart:convert';

import 'package:http/http.dart';

extension HttpResponseExtensions on Response {
  T converter<T>(Function(Map<String, dynamic>) callback) {
    dynamic body = jsonDecode(utf8.decode(bodyBytes));
    return callback((body ?? <String, dynamic>{}) as Map<String, dynamic>) as T;
  }

  List<T> listConverter<T>(Function(Map<String, dynamic>) callback) =>
      (jsonDecode(utf8.decode(bodyBytes)) as List<dynamic>)
          .map(
            (dynamic e) =>
                callback((e ?? <String, dynamic>{}) as Map<String, dynamic>)
                    as T,
          )
          .toList();
}
