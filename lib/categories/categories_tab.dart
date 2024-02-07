import 'package:flutter/material.dart';
import 'package:news_app/model/category.dart';

import '../mytheme.dart';
import 'item_category_widget.dart';

class  CategoryWidget extends StatelessWidget {
  var categoryList= Category.getCategoryList();
  Function onCategoryCallBack;
  CategoryWidget({required this.onCategoryCallBack});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/background.png'
          ),
          fit: BoxFit.cover,
        ),
        color: MyTheme.whiteColor
      ),
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
                return InkWell(onTap: (){
                  onCategoryCallBack(categoryList[index]);
                },
                  child: ItemCategoryWidget(index: index,category: categoryList[index],));
            },
              itemCount: categoryList.length,
          ),
          ),
      ],
      ),
    );
  }
}
