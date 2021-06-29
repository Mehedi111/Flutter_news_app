
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app_getx/utilities/contant.dart';

Widget getAppDrawer(){
  return Drawer(
    child: ListView(
      children: [
        ListTile(
          title: Text("News Headline"),
          onTap: (){
            Get.toNamed(Constant.NEWS_HEADLINE);
          },
          leading: Icon(Icons.contact_page_outlined),
        ),
        ListTile(
          title: Text("News Search"),
          onTap: (){
            Get.toNamed(Constant.NEWS_SEARCH);
          },
          leading: Icon(Icons.search),
        )
      ],
    ),
  );
}