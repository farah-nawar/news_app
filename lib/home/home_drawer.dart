import 'package:flutter/material.dart';
import 'package:news_app/mytheme.dart';

class HomeDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            color: MyTheme.primaryLightColor,
            padding: EdgeInsets.symmetric(vertical: 60),
            width: double.infinity,
            child: Text(
              'News App!',
              style: Theme.of(context).textTheme.headline1,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 20,),
          InkWell(
            onTap: (){
              //Categories tab
            },
            child: Row(
              children: [
                Icon(Icons.list),
                SizedBox(width: 8,),
                Text('Categories',style:Theme.of(context).textTheme.headline2 ,),
              ],
            ),
          ),
          SizedBox(height: 20,),
          InkWell(
            onTap:(){
              //setting tab
            },
            child: Row(
              children: [
                Icon(Icons.settings),
                SizedBox(width: 8,),
                Text('settings',style:Theme.of(context).textTheme.headline2 ,),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
