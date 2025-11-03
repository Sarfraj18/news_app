import 'package:flutter/material.dart';
import 'package:news_app/data/models/article_model.dart';
import 'package:news_app/screens/home/widgets/item_article.dart';
import 'package:provider/provider.dart';

import '../../provider/article_provider.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News App'),
        centerTitle: true,
      ),
      body: Consumer<ArticleProvider>(
          builder: (context,provider,child){
           return  provider.loading? Center(child: CircularProgressIndicator(),):
           ListView(
             children: [
               for(ArticleModel article in provider.articles)
                ItemArticle(article: article)

             ],
           );
      }),

    );
  }
}
