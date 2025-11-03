import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/data/models/article_model.dart';
class NewsApi{
  String url='https://newsapi.org/v2/everything?q=India&sortBy=publishedAt&apiKey=64086627d69445629cc17aa14f24bb80';

Future<List<ArticleModel>>  getNews()async{
    try{
      final response=await http.get(Uri.parse(url));
      if(response.statusCode==200){
        final data = jsonDecode(response.body);
        List articleList=data['articles'];
       return articleList.map((e)=>ArticleModel.fromJson(e)).toList();

      }
    }catch(e){
      print(e);
    }
    return [];
  }
}