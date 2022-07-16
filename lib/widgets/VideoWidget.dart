import 'package:flutter/material.dart';

class Video extends StatefulWidget {
  @override
  _VideoState createState() => _VideoState();
}

class _VideoState extends State<Video> {
  var isChanged = false;
  var isChanged1 = false;
  var isChanged2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget Library'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Width Animated",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
            AnimatedContainer(
              duration: Duration(milliseconds: 500),
              width: isChanged ? 300 : 100,
              height: 100,
              color: Colors.blue,
            ),
            RaisedButton(
              child: Text('Tap Me'),
              onPressed: () {
                setState(() => isChanged = !isChanged);
              },
            ),
            SizedBox(height: 10),
            Text("Width and Height Animated",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
            AnimatedContainer(
              duration: Duration(milliseconds: 500),
              width: isChanged1 ? 300 : 100,
              height: isChanged1 ? 300 : 100,
              color: Colors.blue,
            ),
            RaisedButton(
              child: Text('Tap Me'),
              onPressed: () {
                setState(() => isChanged1 = !isChanged1);
              },
            ),
            SizedBox(height: 10),
            Text("Color and Width Animated",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
            AnimatedContainer(
              duration: Duration(milliseconds: 500),
              width: isChanged2 ? 300 : 100,
              height: 100,
              color: isChanged2 ? Colors.blue : Colors.orange,
            ),
            RaisedButton(
              child: Text('Tap Me'),
              onPressed: () {
                setState(() => isChanged2 = !isChanged2);
              },
            ),
          ],
        ),
      ),
    );
  }
}