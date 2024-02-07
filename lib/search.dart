import 'package:flutter/material.dart';
import 'package:news_app/mytheme.dart';

import 'News/news_item.dart';
import 'api_manager.dart';
import 'model/NewsResponse.dart';
class NewsSearch extends SearchDelegate {

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(onPressed: (){
        showResults(context);
      }, icon: Icon(
        Icons.search,
        size: 25,
      ),),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(onPressed: (){
      Navigator.of(context).pop();
    }, icon: Icon(Icons.clear));
  }

  @override
  Widget buildResults(BuildContext context) {
    return FutureBuilder<NewsResponse>(
        future: ApiManager.getNews(keyword: query),

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

  @override
  Widget buildSuggestions(BuildContext context) {
    return Center(child:Text("suggestions") ,
    );
  }
}
