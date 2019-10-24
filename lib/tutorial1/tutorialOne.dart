import 'package:flutter/material.dart';

class TutorialOneDemo extends StatefulWidget {
  TutorialOneDemo({Key key}) : super(key: key);

  @override
  _TutorialOneDemoState createState() => _TutorialOneDemoState();
}

class _TutorialOneDemoState extends State<TutorialOneDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("第一个demo"),
        ),
        body: Container(
          child: Center(
            child: Text("测试"),
          ),
        ));
  }
}

