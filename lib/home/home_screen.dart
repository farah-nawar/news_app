import 'package:flutter/material.dart';
import 'package:news_app/categories/categories_tab.dart';
import 'package:news_app/home/home_drawer.dart';

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
      body: CategoryWidget(),
    );


  }
}