import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:warta/controller/newscontroller.dart';
import 'package:warta/screens/pages/home/cardnews.dart';
import 'package:warta/screens/pages/profile/profilepage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final NewsControlle controller = Get.put(NewsControlle());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        flexibleSpace: Container(
          margin: const EdgeInsets.only(top: 24.0, bottom: 12.0),
          child: Image.asset(
            'assets/images/Logo.png',
            width: 60,
            height: 60,
          ),
        ),
        actions: [
          Container(
            padding: const EdgeInsets.all(10),
            child: InkWell(
              splashFactory: InkRipple.splashFactory,
              borderRadius: BorderRadius.circular(50),
              onTap: () {
                Get.to(() => ProfilePage());
              },
              child: CircleAvatar(
                child: Image.asset('assets/images/home/userlogo.png'),
              ),
            ),
          ),
        ],
      ),
      body: Obx(
        () => controller.isLoading.value
            ? const Center(
                child: CircularProgressIndicator(
                  color: Colors.blue,
                ),
              )
            : ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(
                  height: 20,
                ),
                itemCount: controller.newsArticles.length,
                itemBuilder: (context, index) => CardNews(
                    title: controller.newsArticles[index].title,
                    desc: controller.newsArticles[index].description,
                    publishedAt:
                        controller.newsArticles[index].publishedAt.toString(),
                    author: controller.newsArticles[index].author ?? '',
                    imageUrl: controller.newsArticles[index].urlToImage ?? ''),
              ),
      ),
    );
  }
}
