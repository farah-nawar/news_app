import 'package:flutter/material.dart';
import 'package:news_app/model/category.dart';

import 'item_category_widget.dart';

class  CategoryWidget extends StatelessWidget {
  var categoryList= Category.getCategoryList();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('pick your category \nof interest',
          style:Theme.of(context).textTheme.subtitle1 ,),
          SizedBox(height: 15,),
          Expanded(
            child:GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Number of columns in each row
                mainAxisSpacing: 18, // Spacing between rows
                crossAxisSpacing: 18,  // Spacing between columns
              ), itemBuilder: ( context, index)
            {
                return ItemCategoryWidget(index: index,category: categoryList[index],);
            },
              itemCount: categoryList.length,
          ),
          ),
      ],
      ),
    );
  }
}
