import 'package:flutter/material.dart';
import 'package:news_app/News/news_details.dart';
import 'package:news_app/mytheme.dart';

import 'home/home_screen.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeScreen.routename,
      routes: {
        HomeScreen.routename: (context) => HomeScreen(),
        NewsDetails.routeName: (context) => NewsDetails(),
      },
      theme: MyTheme.lightTheme,
    );
  }
}
