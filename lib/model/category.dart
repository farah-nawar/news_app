import 'dart:ui';

import '../mytheme.dart';

class Category{
  String id;
  Color color;
  String title;
  String imagepath;


  Category({
    required this.id,
    required this.color,
    required this.title,
    required this.imagepath,
});

  static List<Category> getCategoryList (){
    return [
      Category(id: 'sports', color: MyTheme.redColor, title: 'Sports', imagepath: 'assets/images/sports.png'),
      Category(id: 'politics', color: MyTheme.darkblueColor, title: 'Politics', imagepath: 'assets/images/Politics.png'),
      Category(id: 'health', color: MyTheme.pinkColor, title: 'Health', imagepath: 'assets/images/health.png' ),
      Category(id: 'business', color: MyTheme.brownColor, title: 'Business', imagepath: 'assets/images/bussines.png' ),
      Category(id: 'environment', color: MyTheme.blueColor, title: 'Environment', imagepath: 'assets/images/environment.png' ),
      Category(id: 'science', color: MyTheme.yellowColor, title: 'Science', imagepath: 'assets/images/science.png'),
      Category(id: 'General', color: MyTheme.primaryLightColor, title: 'General', imagepath: 'assets/images/environment.png')





    ];
  }



}