import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App 01',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Journey !!!"),
        ),
        body: GridView.count(
          crossAxisCount: 3,
          childAspectRatio: 1.0,
          padding: const EdgeInsets.all(4.0),
          mainAxisSpacing: 3.0,
          crossAxisSpacing: 3.0,
          children: new List<Widget>.generate(16, (index) {
            return new GridTile(
              child: new Card(
                color: Colors.blue.shade200,
                child: new Center(
                  
                  child: Column(
                    children: <Widget>[
                     Image.asset(
                       'images/twitterbird.png',
                       width: 64.0,
                       height: 64.0,
                       fit: BoxFit.cover,
                       
                     ),
                      new Text('Day - $index'),
                    ],
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}


