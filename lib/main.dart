import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double iconSize = 40.0;
    final TextStyle textStyle = new TextStyle(
      color: Colors.grey,
      fontSize: 30.0,
      fontStyle: FontStyle.normal,
    );
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Staless Widget"),
        backgroundColor: Colors.orange,
      ),
      body: new Container(
        child: Center(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new MyCard(
                title: new Text("I Love You", style: textStyle),
                icon: new Icon(
                  Icons.favorite,
                  color: Colors.orangeAccent[700],
                  size: iconSize,
                ),
              ),
              new MyCard(
                title: new Text("I like this", style: textStyle),
                icon: new Icon(
                  Icons.thumb_up,
                  color: Colors.orangeAccent[400],
                  size: iconSize,
                ),
              ),
              new MyCard(
                title: new Text("Next Please", style: textStyle),
                icon: new Icon(
                  Icons.fast_forward,
                  color: Colors.orangeAccent,
                  size: iconSize,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  final Widget title;
  final Widget icon;
  MyCard({this.title, this.icon});
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: const EdgeInsets.only(bottom: 3.0),
      child: new Card(
        child: new Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[this.title, this.icon],
          ),
        ),
      ),
    );
  }
}
