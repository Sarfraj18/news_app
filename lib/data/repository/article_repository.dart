import 'package:news_app/api/news_api.dart';

import '../models/article_model.dart';

class ArticleRepository{
  NewsApi api;
  ArticleRepository(this.api);


 Future<List<ArticleModel>> getNews()async{
 return await  api.getNews();
  }
}