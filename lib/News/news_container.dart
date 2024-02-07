import 'package:flutter/material.dart';
import 'package:news_app/News/news_item.dart';
import 'package:news_app/api_manager.dart';
import 'package:news_app/model/NewsResponse.dart';
import 'package:news_app/model/SourcesResponse.dart';
import 'package:news_app/mytheme.dart';

class NewsContainer extends StatelessWidget {
  Sources selectedSource;
  NewsContainer({required this.selectedSource});
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<NewsResponse>(
      future: ApiManager.getNews(sourceId: selectedSource.id?? ''),

      builder:(context, snapshot){
        if(snapshot.connectionState == ConnectionState.waiting){
          return Center(
            child: CircularProgressIndicator(
              color: MyTheme.primaryLightColor,
            ),

          );

        }
        if (snapshot.data?.status != 'ok') {
          return Column(
            children: [
              Text(snapshot.data?.message ?? ''),
              ElevatedButton(onPressed: () {}, child: Text('Try Again!'))
            ],
          );
        }
         var newsList=snapshot.data?.articles ?? [];
          return ListView. builder(

            itemBuilder: (context,index){
            return NewsItem(news: newsList[index]);
            },
            itemCount: newsList.length,
          );



      }
    );
  }
}
