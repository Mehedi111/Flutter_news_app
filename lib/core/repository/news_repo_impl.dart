
import 'package:get/get.dart';
import 'package:news_app_getx/core/model/article.dart';
import 'package:news_app_getx/core/model/news_reponse_model.dart';
import 'package:news_app_getx/core/repository/news_repo.dart';
import 'package:news_app_getx/service/http_service.dart';
import 'package:news_app_getx/service/http_service_impl.dart';

class NewsRepoImpl implements NewsRepo{

  late HttpService _httpService;

  NewsRepoImpl(){
    _httpService = Get.put(HttpServiceImpl());
    _httpService.init();
  }

  @override
  Future<List<Article>?> getNewsHeadline() async{

    try {
      final response = await _httpService.getRequest(
            "top-headlines?country=bd"
          );
      final parsedResponse = NewsResponse.fromJson(response.data);
      return parsedResponse.articles;

    } on Exception catch (e) {
      print(e);
      return [];
    }

  }

  @override
  Future<List<Article>?> getSearchedNews(String query) async{
    try {
      final response = await _httpService.getRequest(
          "everything?q=$query"
      );
      final parsedResponse = NewsResponse.fromJson(response.data);
      return parsedResponse.articles;

    } on Exception catch (e) {
      print(e);
      return [];
    }
  }


}