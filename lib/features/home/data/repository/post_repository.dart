import 'dart:math';

import 'package:cubit_dio/core/data/data_source/remote/api_client.dart';
import 'package:cubit_dio/features/home/data/model/response/post_model.dart';
import 'package:dio/dio.dart';

class PostRepository {
  API api = API();
  Future<List<PostModel>> fetchPost() async {
    try {
      Response response = await api.sendRequest.get("/posts");
      List<dynamic> postMaps = response.data;
      return postMaps.map((postMap) => PostModel.fromJson(postMap)).toList();
    } catch (ex) {
      throw ex;
    }
  }
}
