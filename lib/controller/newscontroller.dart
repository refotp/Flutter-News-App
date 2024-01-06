import 'package:get/get.dart';
import 'package:warta/services/remote_service.dart';

import '../model/newsmodel.dart';

class NewsControlle extends GetxController {
  static NewsControlle get instance => Get.find();
  RxList<NewsArticle> a = <NewsArticle>[].obs;
  var newsArticles = <NewsArticle>[].obs;
  RxBool isLoading = true.obs;

  @override
  void onInit() {
    fetchArticles();
    super.onInit();
  }

  void fetchArticles() async {
    try {
      isLoading(true);
      var articles = await RemoteNewsService.fetchNewsArticle();
      if (articles != null) {
        newsArticles(articles);
      }
    } catch (e) {
      throw 'Something went wrong';
    } finally {
      isLoading.value = false;
    }
  }
}
