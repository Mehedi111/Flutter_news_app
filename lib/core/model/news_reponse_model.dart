import 'package:json_annotation/json_annotation.dart';
import 'package:news_app_getx/core/model/article.dart';

part 'news_reponse_model.g.dart';

@JsonSerializable()
class NewsResponse{

  NewsResponse();

  @JsonKey(name: "status")
  String? status;

  @JsonKey(name: "totalResults")
  String? totalResults;

  @JsonKey(name: "articles")
  List<Article>? articles;

  factory NewsResponse.fromJson(Map<String, dynamic> json) => _$NewsResponseFromJson(json);
  Map<String, dynamic> toJson() => _$NewsResponseToJson(this);

}
