import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_listview_builder/widget/Circle.dart';
import 'package:flutter_listview_builder/widget/Sqaure.dart';

class PageHome extends StatefulWidget {
  const PageHome({Key? key}) : super(key: key);

  @override
  State<PageHome> createState() => _PageHome();
}

class _PageHome extends State<PageHome> {
  final List _posts = ["post1", "post2", "post3", "post4", "post5"];
  final List _stories = [
    "stories1",
    "stories2",
    "stories3",
    "stories4",
    "stories5"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Container(
              height: 150,
              child: ListView.builder(
                  itemCount: _stories.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return MyCircle(
                      child: _stories[index],
                    );
                  }),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: _posts.length,
                  itemBuilder: (BuildContext context, int index) {
                    return MySqaure(
                      child: _posts[index],
                    );
                  }),
            ),
          ],
        ));
  }
}
