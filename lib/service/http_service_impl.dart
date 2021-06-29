import 'package:dio/dio.dart';
import 'package:dio/src/response.dart';
import 'package:news_app_getx/service/http_service.dart';

const BASE_URL = "https://newsapi.org/v2/";
const API_KEY = "4ff72e4303854bc897d4be1d89ba26f3";

class HttpServiceImpl implements HttpService {
  late Dio _dio;

  @override
  Future<Response> getRequest(String url) async {
    Response response;
    try {
      response = await _dio.get(url);
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);
    }
    return response;
  }

  initializeInterceptors() {
    _dio.interceptors.add(InterceptorsWrapper(onError: (error, handler) {
      print(error.message);
    }, onRequest: (request, handler) {
      print("${request.method} | ${request.path}");
    }, onResponse: (response, handler) {
      print(
          "${response.statusCode} | ${response.statusMessage} | ${response.data}");
    }));
  }

  @override
  void init() {
    _dio = Dio(BaseOptions(
        baseUrl: BASE_URL, headers: {"Authorization": "Bearer $API_KEY"}));

    initializeInterceptors();
  }
}
