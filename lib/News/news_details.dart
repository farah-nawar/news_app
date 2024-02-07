import 'package:flutter/material.dart';
//import 'package:url_launcher/url_launcher.dart';

import '../home/home_drawer.dart';
import '../model/NewsResponse.dart';
import '../mytheme.dart';

class NewsDetails extends StatelessWidget {
  static const String routeName = 'news_details';
  @override
  Widget build(BuildContext context) {
    var news = ModalRoute.of(context)!.settings.arguments as News;
    String? NewsTitle = news.title;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          NewsTitle!,
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 18, horizontal: 12),
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
            SizedBox(
              height: 10,
            ),
            Text(
              news.author ?? '',
              style: TextStyle(
                fontSize: 15,
                color: MyTheme.greycolor,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              news.title ?? '',
              style: TextStyle(
                fontSize: 18,
                color: MyTheme.blackColor,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              news.publishedAt ?? '',
              style: TextStyle(
                fontSize: 15,
                color: MyTheme.greycolor,
              ),
              textAlign: TextAlign.end,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              news.description ?? '',
              style: TextStyle(
                fontSize: 18,
                color: MyTheme.greycolor,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton.icon(
                    onPressed: () {
                      //openUrl(news.url);
                    },
                    icon: Icon(Icons.arrow_forward),
                    label: Text('View Full Article'),
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
  // void openUrl(String? url) async {
  //     if(url ==null){
  //       return;
  //     }
  //     var uri=Uri.parse(url);
  //     if(await canLaunchUrl(uri))
  //   {
  //   await  launchUrl(uri);
  //   }
  //
  //
  // }
}
