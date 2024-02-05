import 'package:flutter/material.dart';
import 'package:news_app/Tab/tab_container.dart';
import 'package:news_app/api_manager.dart';
import 'package:news_app/categories/categories_tab.dart';
import 'package:news_app/home/home_drawer.dart';
import 'package:news_app/model/SourcesResponse.dart';

import '../model/category.dart';

class HomeScreen extends StatelessWidget{
  static const String routename='home';

  @override
  Widget build(BuildContext context){
    return Scaffold(
   appBar: AppBar(
        title:  Text(
          'News App',
          style: Theme.of(context).textTheme.headline1,
        ),
   ),
      drawer: Drawer(
        child: HomeDrawer(),
      ),
      body: FutureBuilder<SourcesResponse>(
        future: ApiManager.getSources(),
    builder: (context,snapshot) {
      if (snapshot.connectionState == ConnectionState.waiting) {
        return CircularProgressIndicator();
      }
      else if (snapshot.hasError) {
        return Column(
          children: [
            Text('Something went wrong'),
            ElevatedButton(onPressed: () {}, child: Text('Try Again'))
          ],
        );
      }
      if (snapshot.data?.status != 'ok') {
        //server has code and message
        return Column(
          children: [
            Text(snapshot.data?.message ?? ""),
            ElevatedButton(onPressed: () {}, child: Text("Try Again")),

          ],
        );
      }
      //data
      var sourceslist =snapshot.data?.sources ?? [];
      // return ListView.builder(itemBuilder: (context, index){
      //   return Text(sourceslist[index].name ?? '');
      // },
      //   itemCount: sourceslist.length,
      //
      // );
      return TabContainer(sources: sourceslist);

    }
    ),

    );
}
}
