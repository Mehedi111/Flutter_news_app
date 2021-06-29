
import 'package:flutter/material.dart';
import 'package:news_app_getx/core/widget/drawer.dart';

class NewsHeadlineView extends StatelessWidget {
  const NewsHeadlineView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Headlines"),
      ),
      drawer: getAppDrawer(),
      body: Container(),
    );
  }
}
