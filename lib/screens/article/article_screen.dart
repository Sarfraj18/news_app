import 'package:flutter/material.dart';
import 'package:news_app/data/models/article_model.dart';

class ArticleScreen extends StatelessWidget {
  final ArticleModel article;
  const ArticleScreen({super.key,required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News Details'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Image.network(article.urlToImage?? ''),
          Padding(
            padding: const EdgeInsets.all( 15),
            child: Column(
              children: [
                Text(article.title??'',style: Theme.of(context).textTheme.titleLarge,),
                SizedBox(height: 15,),
                Text(article.description??''),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
