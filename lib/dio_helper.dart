import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'const.dart';

class DioHelper {
  static Dio? dio;

  static init() {
    dio = new Dio(BaseOptions(
        baseUrl: 'https://newsapi.org/', receiveDataWhenStatusError: true));
  }

  static Future<Response> getData(
      String url, Map<String, dynamic> query) async {
    return await dio!.get(
      url,
      queryParameters: query,
    );
  }
}
