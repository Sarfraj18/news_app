import 'package:flutter/material.dart';
import 'package:news_app/data/models/article_model.dart';
import 'package:news_app/data/repository/article_repository.dart';

class ArticleProvider with ChangeNotifier{
  ArticleRepository repo;
  bool loading =false;
  List<ArticleModel> articles=[];



  ArticleProvider(this.repo){
    getNews();
  }


  getNews()async{
    loading=true;
    notifyListeners();
   articles=await repo.getNews();
    loading=false;
    notifyListeners();
  }
}