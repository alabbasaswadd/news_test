import 'package:dio/dio.dart';
import 'package:news_test/model/news_model.dart';

Future<List<NewsModel>> getData() async {
  List<NewsModel> lst = [];
  Dio dio = Dio();
  var response = await dio.get(
      "https://newsapi.org/v2/top-headlines?country=us&apiKey=8c43f386b7594be2bda0acb1e2cd3ca4");
  Map<String, dynamic> news = response.data;
  List<dynamic> article = news['articles'];

  for (var element in article) {
    lst.add(NewsModel(
        title: element['title'],
        image: element['urlToImage'],
        subtitle: element['description']));
  }
  return lst;
}
