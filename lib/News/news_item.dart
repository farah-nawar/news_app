import 'package:flutter/material.dart';
import 'package:news_app/News/news_details.dart';
import 'package:news_app/mytheme.dart';

import '../model/NewsResponse.dart';

class NewsItem extends StatelessWidget {
  News news;
  NewsItem({required this.news});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).pushNamed(NewsDetails.routeName, arguments: news),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 18,horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(


              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
              ),
              child: Image.network(news.urlToImage ?? ''),
            ),
            SizedBox(height: 10,),
            Text(
              news.author ?? '',
              style: TextStyle(
                fontSize: 15,
                color: MyTheme.greycolor,
              ),
            ),
            SizedBox(height: 10,),
            Text(news.title ?? '',
              style: TextStyle(
                fontSize: 18,
                color: MyTheme.blackColor,
              ),),
            SizedBox(height: 10,),
            Text(news.publishedAt ?? '',
              style: TextStyle(
                fontSize: 15,
                color: MyTheme.greycolor,
              ),
              textAlign: TextAlign.end,
            ),

          ],
        ),
      ),
    );
  }
}
