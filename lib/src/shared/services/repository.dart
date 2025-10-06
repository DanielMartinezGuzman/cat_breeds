import 'package:cat_breeds/src/shared/constants/api.dart';
import 'package:cat_breeds/src/shared/typing/enums/http.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart';

class HttpService {
  HttpService._();
  static final HttpService instance = HttpService._();

  Map<String, String> get baseHeaders => <String, String>{
    'x-api-key': apiToken,
  };

  Future<Response> request({
    required String path,
    required HttpRequestType type,
    Map<String, dynamic>? payload,
  }) async {
    Uri uriPath = Uri.parse(<String>[apiUrl, path].join('/'));
    return switch (type) {
      HttpRequestType.get => get(uriPath, headers: baseHeaders),
      HttpRequestType.post => post(
        uriPath,
        headers: baseHeaders,
        body: payload,
      ),
      (_) => throw FlutterError('Http method not implemented'),
    };
  }
}
