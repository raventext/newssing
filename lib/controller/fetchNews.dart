import 'dart:convert';
import 'dart:math';
import 'package:http/http.dart';
import 'package:swen_news/model/newsArt.dart';

class FetchNews{
  static List sourcesID = [
    "google-news-in",
    "the-hindu",
    "the-times-of-india",
    "bbc-news",
    "national-geographic",


/*

    "abc-news",
    "bbc-news",
    "bbc-sport",
    "business-insider",
    "engadget",
    "entertainment-weekly",
    "espn",
    "espn-cric-info",
    "financial-post",
    "fox-news",
    "fox-sports",
    "globo",
    "google-news",
    "google-news-in",
    "medical-news-today",
    "national-geographic",
    "news24",
    "new-scientist",
    "new-york-magazine",
    "next-big-future",
    "techcrunch",
    "techradar",
    "the-hindu",
    "the-wall-street-journal",
    "the-washington-times",
    "time",
    "usa-today",
    */

  ];

  static Future<NewsArt> fetchNews() async{
    final random = new Random();
    var source = sourcesID[random.nextInt(sourcesID.length)];

    Response response = await get(Uri.parse("https://newsapi.org/v2/top-headlines?sources=$source&apiKey=d20845ff924d463ab3e06e7b5f4b2b11"));
    Map body_data = jsonDecode(response.body);
    List articles = body_data["articles"];
    print(articles);

    final Newrandom = new Random();
    var myArticle = articles[random.nextInt(articles.length)];


    return NewsArt.fromAPItoApp(myArticle);


  }
}