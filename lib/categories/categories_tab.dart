import 'package:flutter/material.dart';

class  CategoryWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(25),
      child: Column(
        children: [
          Text('pick your category \nof interest',
          style:Theme.of(context).textTheme.subtitle1 ,),
          Expanded(
            child:GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 18,
                crossAxisSpacing: 18,
              ), itemBuilder: (BuildContext context, int index) {
                
            },
          ),
        ],
      ),
    );
  }
}
