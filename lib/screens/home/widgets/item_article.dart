import 'package:flutter/material.dart';
import 'package:news_app/data/models/article_model.dart';
import 'package:news_app/screens/article/article_screen.dart';

class ItemArticle extends StatelessWidget {
  final ArticleModel article;
  const ItemArticle({super.key,required this.article});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>ArticleScreen(article: article)));
      },
      child: Column(
        children: [
          Image.network(article.urlToImage??''),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(article.title??'',style: Theme.of(context).textTheme.titleLarge,),
          ),
          SizedBox(height: 20,)
        ],
      ),
    );
  }
}
