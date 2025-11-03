class ArticleModel{
  Map<String,dynamic> source;
  String? author,title,description,url,urlToImage,publishedAt,content;


  ArticleModel(this.source,this.author,this.title,this.description,this.url,this.urlToImage,this.publishedAt,this.content);


  factory ArticleModel.fromJson(json)=>ArticleModel(
      json['source'],
      json['author'],
      json['title'],
      json['description'],
      json['url'],
      json['urlToImage'],
      json['publishedAt'],
      json['content']
      );
}