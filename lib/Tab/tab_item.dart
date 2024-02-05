import 'package:flutter/material.dart';
import 'package:news_app/model/SourcesResponse.dart';
import 'package:news_app/mytheme.dart';

class TabItem extends StatelessWidget {
  Sources sources;
  bool isSelected;
  TabItem({required this.sources, required this.isSelected});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8,horizontal: 10),
      margin: EdgeInsets.only(top: 8),
      decoration: BoxDecoration(
        color:
            isSelected == true ? MyTheme.primaryLightColor : Colors.transparent,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: MyTheme.primaryLightColor),
      ),
      child: Text(
        sources.name ?? "",
        style: TextStyle(
            fontSize: 18,
            color: isSelected == true
                ? MyTheme.whiteColor
                : MyTheme.primaryLightColor),
      ),
    );
  }
}
