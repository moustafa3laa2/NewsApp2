import 'package:dio/dio.dart';
import 'package:news_app/models/news_model.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);

  Future<List<ArticleModel>> getNews({required String category}) async {
    Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=b37e3bda8fea494cb54362047a0f403b&category=$category');
    //كده بحول الريكوست من استرينح ل ماب زي الاكستنشن الي ف الويب
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData['articles'];
    List<ArticleModel> articlesList = [];
    for (var article in articles) {
      ArticleModel articleModel = ArticleModel(
        image: article['urlToImage'],
        title: article['title'],
        describtion: article['describtion'],
      );
      articlesList.add(articleModel);
    }
    return articlesList;
  }
}
