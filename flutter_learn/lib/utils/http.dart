import 'package:dio/dio.dart';

class XHttp {

  static final Dio dio = Dio(BaseOptions(
    baseUrl: "https://www.mxnzp.com/api",
    connectTimeout: 5000,
    receiveTimeout: 3000,
  ));


  static Future get(String url, [Map < String, dynamic > params]) async {
    var response;
    if (params != null) {
      response = await dio.get(url, queryParameters: params);
    } else {
      response = await dio.get(url);
    }
    return response.data;
  }

  static Future post(String url, [Map < String, dynamic > params]) async {
    var response = await dio.post(url, data: params);
    return response.data;
  }



}