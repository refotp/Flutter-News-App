import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:warta/widgets/style_widgets.dart';

class CardNews extends StatelessWidget {
  const CardNews(
      {super.key,
      required this.title,
      required this.desc,
      required this.publishedAt,
      required this.author,
      required this.imageUrl});

  final String title;
  final String desc;
  final String publishedAt;
  final String author;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
      width: double.infinity,
      height: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.blue[100],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: NetworkImage(imageUrl), fit: BoxFit.cover)),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20, top: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: globalTitle(18, Colors.black),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  desc,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: globalSubTitle(16, Colors.black),
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Iconsax.user_octagon,
                          color: Color.fromARGB(255, 215, 161, 0),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Text(
                            author,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        )
                      ],
                    ),
                    Row(children: [
                      const Icon(
                        Iconsax.calendar,
                        color: Color.fromARGB(255, 215, 161, 0),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(publishedAt)
                    ])
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
