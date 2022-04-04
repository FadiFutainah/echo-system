import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:app/application/config/config.dart';
import 'package:http/http.dart' as http;
import 'package:app/data/services/database_service.dart';
import 'package:app/application/config/errors/exceptions.dart';

class RestApiService extends DataBaseService {
  final int timeoutDuration = 10;

  @override
  Future<dynamic> postRequest(
    String url,
    Map<String, dynamic> body, [
    Map<String, String> headers = DataBaseService.defaultHeaders,
  ]) async {
    try {
      var uri = Uri.parse(serverAddress + url);
      var response = await http
          .post(
            uri,
            body: body,
            headers: headers,
          )
          .timeout(Duration(seconds: timeoutDuration));
      return returnResponse(response);
    } on SocketException {
      throw InternetConnectionException();
    } on TimeoutException {
      throw WeakInternetConnection();
    }
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case StatusCode.success:
        return jsonDecode(response.body);
      case StatusCode.unauthorized:
        throw UnautherizedException(response.statusCode);
      case StatusCode.notfound:
        throw NotFoundException(response.statusCode);
      case StatusCode.internalServerError:
        throw FetchDataException(response.statusCode);
      default:
        throw InternetConnectionException();
    }
  }
}
