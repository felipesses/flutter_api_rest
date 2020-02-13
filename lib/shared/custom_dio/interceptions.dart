import 'package:dio/dio.dart';

class CustomInterceptors extends InterceptorsWrapper {
  @override
  onRequest(RequestOptions options) {
    print("REQUEST (${options.method}) -> PATH: ${options.path}");
    return options;
  }

  @override
  onResponse(Response response) {
    // 200 ou 201

    print(
        "RESPONSE (${response.statusCode}) -> PATH: ${response.request.path}");
    return response;
  }

  @override
  onError(DioError err) {
    //Exception
    print("ERROR (${err.response.statusCode}) -> PATH: ${err.request.path}");
    return err;
  }
}
