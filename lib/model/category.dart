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
      //business entertainment general health science sports technology
      Category(id: 'sports', color: MyTheme.redColor, title: 'Sports', imagepath: 'assets/images/sports.png'),
      Category(id: 'entertainment', color: MyTheme.darkblueColor, title: 'Entertainment', imagepath: 'assets/images/Politics.png'),
      Category(id: 'health', color: MyTheme.pinkColor, title: 'Health', imagepath: 'assets/images/health.png' ),
      Category(id: 'business', color: MyTheme.brownColor, title: 'Business', imagepath: 'assets/images/bussines.png' ),
      Category(id: 'technology', color: MyTheme.blueColor, title: 'Technology', imagepath: 'assets/images/environment.png' ),
      Category(id: 'science', color: MyTheme.yellowColor, title: 'Science', imagepath: 'assets/images/science.png'),
      Category(id: 'General', color: MyTheme.primaryLightColor, title: 'General', imagepath: 'assets/images/environment.png')





    ];
  }



}