import 'package:flutter/material.dart';
import 'package:news_app/News/news_container.dart';
import 'package:news_app/model/SourcesResponse.dart';
import 'package:news_app/Tab/tab_item.dart';

class TabContainer extends StatefulWidget {
  List<Sources> sources;

  TabContainer({required this.sources});

  @override
  State<TabContainer> createState() => _TabContainerState();
}

class _TabContainerState extends State<TabContainer> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DefaultTabController(
        length: widget.sources.length,
        child: Column(
          children: [
            TabBar(
              onTap: (index) {
                selectedIndex = index;
                setState(() {});
              },
              isScrollable: true,
              indicatorColor: Colors.transparent,
              tabs: widget.sources
                  .map((sources) => TabItem(
                        sources: sources,
                        isSelected:
                            selectedIndex == widget.sources.indexOf(sources),
                      ))
                  .toList(),
            ),
            Expanded(child: NewsContainer(selectedSource: widget.sources[selectedIndex])),
          ],
        ),
        
      ),
    );
  }
}
