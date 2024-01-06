import 'package:http/http.dart' as http;
import 'package:warta/constants/stringconst.dart';
import '../model/newsmodel.dart';

class RemoteNewsService {
  static var client = http.Client();

  static Future<List<NewsArticle>?> fetchNewsArticle() async {
    var response = await client.get(Uri.parse(
        "https://newsapi.org/v2/top-headlines?country=us&apiKey=${StringConst.apiKey}"));
    if (response.statusCode == 200) {
      return newsArticleFromJson(response.body);
    } else {
      return null;
    }
  }
}
