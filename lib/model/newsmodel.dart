import 'dart:convert';

List<NewsArticle> newsArticleFromJson(String str) => List<NewsArticle>.from(json
    .decode(str)['articles']
    .map((x) => NewsArticle.fromJson(Map<String, dynamic>.from(x))));

class NewsArticle {
  Source source;
  String? author;
  String title;
  String description;
  String url;
  String? urlToImage;
  DateTime publishedAt;
  String content;

  NewsArticle({
    required this.source,
    this.author,
    required this.title,
    required this.description,
    required this.url,
    this.urlToImage,
    required this.publishedAt,
    required this.content,
  });

  factory NewsArticle.fromJson(Map<String, dynamic> json) => NewsArticle(
      source: Source.fromJson(json["source"] ?? {}),
      author: json["author"] as String? ?? "",
      title: json["title"] as String? ?? "",
      description: json["description"] as String? ?? "",
      url: json["url"] as String? ?? "",
      urlToImage: json["urlToImage"] as String? ?? "",
      publishedAt: json["publishedAt"] != null
          ? DateTime.parse(json["publishedAt"] as String)
          : DateTime.now(),
      content: json["content"] as String? ?? "");
}

class Source {
  dynamic id;
  String name;

  Source({
    this.id,
    required this.name,
  });

  factory Source.fromJson(Map<String, dynamic> json) => Source(
        id: json["id"],
        name: json["name"],
      );
}
