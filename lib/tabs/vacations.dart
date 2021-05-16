import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scrollable_list_tabview/model/list_tab.dart';
import 'package:scrollable_list_tabview/model/scrollable_list_tab.dart';
import 'package:scrollable_list_tabview/scrollable_list_tabview.dart';

class Vacations extends StatefulWidget {
  @override
  _VacationsState createState() => _VacationsState();
}

class _VacationsState extends State<Vacations> {
  @override
  Widget build(BuildContext context) {
    return ScrollableListTabView(
      tabHeight: 48,
      bodyAnimationDuration: const Duration(milliseconds: 150),
      tabAnimationCurve: Curves.easeOut,
      tabAnimationDuration: const Duration(milliseconds: 200),
      tabs: [
        ScrollableListTab(
            tab: ListTab(
              label: Text('Все'),
            ),
            body: GridView.builder(
              shrinkWrap: true,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              physics: NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (_, index) => Card(
                child: Center(child: Text('Card element $index')),
              ),
            )),
        ScrollableListTab(
            tab: ListTab(label: Text('Стартапы')),
            body: GridView.builder(
              shrinkWrap: true,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              physics: NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (_, index) => Card(
                child: Center(child: Text('Card element $index')),
              ),
            )),
        ScrollableListTab(
            tab: ListTab(
              label: Text('Фриланс'),
            ),
            body: GridView.builder(
              shrinkWrap: true,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              physics: NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (_, index) => Card(
                child: Center(child: Text('Card element $index')),
              ),
            )),
        ScrollableListTab(
            tab: ListTab(
              label: Text('Компании'),
            ),
            body: GridView.builder(
              shrinkWrap: true,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              physics: NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (_, index) => Card(
                child: Center(child: Text('Card element $index')),
              ),
            )),
      ],
    );
  }
}
