import 'package:flutter/material.dart';
import './tutorial1/tutorialOne.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "标题", debugShowCheckedModeBanner: false, home: PeoplePage());
  }
}

class PeoplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("项目"),
        ),
        body: ListView(
          children: <Widget>[
            ListTileW("Baseline基准线布局", "这个看看", TutorialOneDemo()),
          ],
        ));
  }
}

class ListTileW extends StatelessWidget {
  const ListTileW(this.title, this.subTitle, this.pushWidget);
  final String title;
  final String subTitle;
  final Widget pushWidget;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subTitle),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return pushWidget;
        }));
      },
    );
  }
}
