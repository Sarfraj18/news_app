import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/api/news_api.dart';
import 'package:news_app/data/repository/article_repository.dart';
import 'package:news_app/provider/article_provider.dart';
import 'package:news_app/screens/home/home_screen.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (context)=>NewsApi()),
        Provider(create: (context)=>ArticleRepository(context.read<NewsApi>())),
        
        ChangeNotifierProvider(
          create: (context)=>ArticleProvider(context.read<ArticleRepository>()),

        )

      ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    ),
    );

  }
}
