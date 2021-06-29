import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app_getx/feature/news_headline/binding/news_headline_binding.dart';
import 'package:news_app_getx/feature/news_headline/view/news_headline_view.dart';
import 'package:news_app_getx/feature/search_news/binding/search_news_binding.dart';
import 'package:news_app_getx/feature/search_news/view/search_news_view.dart';
import 'package:news_app_getx/utilities/contant.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "News App",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      getPages: [
        GetPage(name: Constant.NEWS_HEADLINE, page: ()=> NewsHeadlineView(), binding: NewsHeadlineBinding()),
        GetPage(name: Constant.NEWS_SEARCH, page: ()=> SearchNewsView(), binding: SearchNewsBinding()),
      ],

      initialRoute: Constant.NEWS_HEADLINE,
    );
  }
}

