import 'dart:io';

import 'package:dio/dio.dart';

class Globel {
  static late Globel _instance;
  late Dio dio;

  static Globel getInstance() {
    // ignore: prefer_conditional_assignment, unnecessary_null_comparison
    if (_instance == null) {
      // ignore: unnecessary_new
      _instance = new Globel();
    }
    return _instance;
  }

  Globel() {
    // ignore: unnecessary_new
    dio = new Dio();
    dio.options = BaseOptions(
      baseUrl: "http://www.wpixel.com",
      // 连接超时
      connectTimeout: 5000,
      // 发送超时
      sendTimeout: 5000,
      // 回调超时
      receiveTimeout: 5000,
      headers: {
        "token": "111 ",
      },
      // 请求类型
      contentType: Headers.jsonContentType,
      // 响应 类型
      responseType: ResponseType.json,
    );
    // 监听
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options) => {
        // ignore: avoid_print
        print("请求：" + options.headers.toString())
      },
      onResponse: (e) => {
        // ignore: avoid_print
        print("返回：" + e.toString())
      },
      onError: (e) {
        if (e.type == DioErrorType.CONNECT_TIMEOUT) {
          // ignore: avoid_print
          print("连接超时错误");
        } else {
          // ignore: avoid_print
          print("接口错误： " + e.toString());
        }
      },
    ));
  }
}
