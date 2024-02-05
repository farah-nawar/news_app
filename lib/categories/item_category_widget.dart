import 'package:flutter/material.dart';
import 'package:news_app/categories/categories_tab.dart';
import 'package:news_app/model/category.dart';

class ItemCategoryWidget extends StatelessWidget {
    Category category;
    int index;
    ItemCategoryWidget({required this.category, required this.index});
    @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(

          color: category.color,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(18),
              topRight: Radius.circular(18),
              bottomLeft: Radius.circular((index %2==0)?18:0),
              bottomRight: Radius.circular((index %2==0)?0:18)
          )
      ),
      child: Column(
        children: [
          Image.asset(category.imagepath,height: 80,),
          Text( category.title, style:Theme.of(context).textTheme.subtitle2 ,)
        ],
      ),
    );
  }
}
