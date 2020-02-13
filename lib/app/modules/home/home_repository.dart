import 'package:dio/dio.dart';
import 'package:flutter_apirest/shared/custom_dio/custom_dio.dart';
import 'package:flutter_apirest/shared/models/post_model.dart';

class HomeRepository {
  final CustomDio _client;

  HomeRepository(this._client);

  Future<List<PostModel>> getPosts() async {
    // Método async await, pois estamos utilizando a função Future para
    // fazer uma requisição no banco de dados e retornar ao client
    try {
      var response = await _client.get("/posts");
      return (response.data as List)
          .map((item) => PostModel.fromJson(item))
          .toList();
    } on DioError catch (e) {
      throw (e.message);
    }
  }
}

// GET
// POST
// UPDATE
// DELETE
