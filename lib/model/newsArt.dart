class NewsArt{
  String imgUrl;
  String newsHead;
  String newsDes;
  String newsCnt;
  String newsUrl;

  NewsArt({
    required this.imgUrl,
    required this.newsHead,
    required this.newsDes,
    required this.newsCnt,
    required this.newsUrl,
});

  static NewsArt fromAPItoApp(Map<String, dynamic> article){
    return NewsArt(
        imgUrl: article["urlToImage"] ?? "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/breaking-news-poster-design-template-232c3f2700b91a0fd6e3a5a2e583a5da_screen.jpg?ts=1610645412",
        newsHead: article["title"] ?? "--",
        newsDes: article["description"] ?? "--",
        newsCnt: article["content"] ?? "--",
        newsUrl: article["url"] ?? "https://news.google.com/home?hl=en-IN&gl=IN&ceid=IN:en");
  }


}