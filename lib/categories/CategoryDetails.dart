import 'package:flutter/material.dart';

import '../Tab/tab_container.dart';
import '../api_manager.dart';
import '../model/SourcesResponse.dart';
import '../model/category.dart';
import '../mytheme.dart';

class CategoryDetails extends StatelessWidget {
  Category category;
  CategoryDetails({required this.category});
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<SourcesResponse>(
        future: ApiManager.getSources(category.id),
        builder: (context,snapshot) {
          if(snapshot.connectionState == ConnectionState.waiting){
            return Center(
              child: CircularProgressIndicator(
                color: MyTheme.primaryLightColor,
              ),

            );

          }else if(snapshot.hasError){
            return Column(
              children: [
                Text('Something Went wrong'),
              ],

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
    );
  }
}
