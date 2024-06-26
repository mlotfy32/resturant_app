import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:resturantapp/app/app_prefs.dart';
import 'package:resturantapp/app/constant.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

const String APPLICATION_JSON = 'application/json';
const String CONTENT_TYPE = 'content-type';
const String ACCEPT = 'accept';
const String AUTHORIZATION = 'authorization';
const String DEFAULT_LANGUAGE = 'language';

class DioFactory {
  final AppPrefrances _appPrefrances;
  DioFactory(this._appPrefrances);
  Future<Dio> getDio() async {
    Dio dio = Dio();
    String language = await _appPrefrances.getAppLanguage();
    Map<String, String> headers = {
      APPLICATION_JSON: APPLICATION_JSON,
      ACCEPT: APPLICATION_JSON,
      AUTHORIZATION: Constant.Token,
      DEFAULT_LANGUAGE: language,
    };
    dio.options = BaseOptions(
        baseUrl: Constant.baseUrl,
        connectTimeout: Duration(seconds: Constant.Api_TimeOut),
        headers: headers,
        receiveTimeout: Duration(seconds: Constant.Api_TimeOut));
    if (!kReleaseMode) {
      dio.interceptors.add(PrettyDioLogger(
          requestBody: true, requestHeader: true, responseHeader: true));
    }
    return dio;
  }
}
