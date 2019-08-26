import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Columns and Rows'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: Text('Row 1'),
                  height: 100.0,
                  width: 100.0,
                  color: Colors.pinkAccent,
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  child: Text('Row 2'),
                  height: 100.0,
                  width: 100.0,
                  color: Colors.greenAccent,
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  child: Text('Row 3'),
                  height: 100.0,
                  width: 100.0,
                  color: Colors.yellowAccent,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Text('Column 1'),
              height: 100.0,
              width: screenWidth * 0.9, //using 90% of the srceen width
              color: Colors.blueAccent,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Text('Column 2'),
              height: 150.0,
              width: screenWidth * 0.9,
              color: Colors.pinkAccent,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Text('Column 3'),
              height: 300.0,
              width: screenWidth * 0.9,
              color: Colors.redAccent,
            ),
          ],
        ),
      ),
    );
  }
}
