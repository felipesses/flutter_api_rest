import 'package:dio/dio.dart';
import 'package:flutter_apirest/shared/constants.dart';
import 'package:flutter_apirest/shared/custom_dio/interceptions.dart';

class CustomDio extends Dio {
  CustomDio() {
    options.baseUrl = BASE_URL;
    interceptors.add(CustomInterceptors());
    options.connectTimeout = 5000;
  }
}
