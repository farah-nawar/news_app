import 'package:flutter/material.dart';
import 'package:news_app/mytheme.dart';

import '../model/NewsResponse.dart';

class NewsItem extends StatelessWidget {
  News news;
  NewsItem({required this.news});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
            ),
            child: Image.network(news.urlToImage ?? ''),
          ),
          Text(
            news.author ?? '',
            style: TextStyle(
              fontSize: 15,
              color: MyTheme.greycolor,
            ),
          ),
          Text(news.title ?? '',
            style: TextStyle(
              fontSize: 18,
              color: MyTheme.blackColor,
            ),),
          Text(news.publishedAt ?? '',
            style: TextStyle(
              fontSize: 15,
              color: MyTheme.greycolor,
            ),),
        ],
      ),
    );
  }
}
