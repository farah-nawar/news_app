import 'package:flutter/material.dart';
import 'package:news_app/Tab/tab_container.dart';
import 'package:news_app/api_manager.dart';
import 'package:news_app/categories/CategoryDetails.dart';
import 'package:news_app/categories/categories_tab.dart';
import 'package:news_app/home/home_drawer.dart';
import 'package:news_app/model/SourcesResponse.dart';
import 'package:news_app/settings/settings_tab.dart';

import '../model/category.dart';
import '../mytheme.dart';

class HomeScreen extends StatefulWidget {
  static const String routename = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'News App',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      drawer: Drawer(
        child: HomeDrawer(
          onSideButton: onSideMenuCallBack,
        ),
      ),
      body: selectedDrawer==HomeDrawer.settings? SettingsTab() :
      selectedCategory == null
          ? CategoryWidget(
              onCategoryCallBack: onCategoryCallBack,
            )
          : CategoryDetails(
              category: selectedCategory!,
            ),
    );
  }

  Category? selectedCategory = null;

  void onCategoryCallBack(Category category) {
    selectedCategory = category;

    setState(() {});
  }

  int selectedDrawer = HomeDrawer.categories;
  void onSideMenuCallBack(int selected) {
    selectedDrawer=selected;
    Navigator.pop(context);
    setState(() {});
  }
}
