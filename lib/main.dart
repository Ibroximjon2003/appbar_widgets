import 'package:appbar_widgets/circle.dart';
import 'package:appbar_widgets/square.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List _posts = [
    'post1',
    'post2',
    'post3',
    'post4',
    'post5',
    'post6',
  ];
  final List _stories = [
    'story1',
    'story2',
    'story3',
    'story4',
    'story5',
    'story6',
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('Instagram UI')),
          body: Column(
            children: [
              Container(
                  height: 150,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _stories.length,
                    itemBuilder: ((context, index) => MyCircle(
                          child: _stories[index],
                        )),
                  )),
              Expanded(
                child: ListView.builder(
                  itemCount: _posts.length,
                  itemBuilder: (context, index) => MySquare(
                    child: _posts[index],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
