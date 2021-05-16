import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scrollable_list_tabview/scrollable_list_tabview.dart';

class Courses extends StatefulWidget {
  @override
  _CoursesState createState() => _CoursesState();
}

final manageList = ['asddasdaads1', 'asdasdasd2', 'sadadadsda3', 'dasadadsdas'];

class _CoursesState extends State<Courses> {
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
              label: Text('Дизайн'),
            ),
            body: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (_, index) => ListTile(
                leading: Container(
                  height: 40,
                  width: 40,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
                  alignment: Alignment.center,
                  child: Text(index.toString()),
                ),
                title: Text('List element $index'),
              ),
            )),
        ScrollableListTab(
            tab: ListTab(label: Text('Менеджмент')),
            body: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (_, index) => ListTile(
                leading: Container(
                  height: 40,
                  width: 40,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
                  alignment: Alignment.center,
                  child: Text(index.toString()),
                ),
                title: Text('List element $index'),
              ),
            )),
        ScrollableListTab(
            tab: ListTab(
              label: Text('Разработка'),
            ),
            body: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (_, index) => ListTile(
                leading: Container(
                  height: 40,
                  width: 40,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
                  alignment: Alignment.center,
                  child: Text(index.toString()),
                ),
                title: Text(manageList[index]),
              ),
            )),
      ],
    );
  }
}
