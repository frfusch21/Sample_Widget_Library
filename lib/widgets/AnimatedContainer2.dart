import 'package:flutter/material.dart';

class AnimatedContainer2 extends StatefulWidget {

  @override
  _AnimatedContainer1State createState() => _AnimatedContainer1State();
}

class _AnimatedContainer1State extends State<AnimatedContainer2> {
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
            Text("Decoration Animated",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
            AnimatedContainer(
              duration: Duration(milliseconds: 500),
              width: isChanged ? 300 : 100,
              height: 100,
              decoration: BoxDecoration(
                color: isChanged ? Colors.orange : Colors.blue,
                borderRadius: BorderRadius.all(
                  Radius.circular(isChanged ? 16 : 0),
                ),
                border: Border.all(
                  color: isChanged ? Colors.blue : Colors.orange,
                  width: 4,
                ),
              ),
            ),
            RaisedButton(
              child: Text('Tap Me'),
              onPressed: () {
                setState(() => isChanged = !isChanged);
              },
            ),
            SizedBox(height: 10),
              Text("Transform Animated",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              AnimatedContainer(
                duration: Duration(milliseconds: 500),
                width:  100,
                height: 100,
                decoration: BoxDecoration(
                  color: isChanged1 ? Colors.orange : Colors.blue,
                  borderRadius: BorderRadius.all(
                    Radius.circular(isChanged1 ? 16 : 0),
                  ),
                  border: Border.all(
                    color: isChanged1 ? Colors.blue : Colors.orange,
                    width: 4,
                  ),
                ),
                transform: isChanged1
                    ? (Matrix4.identity()
                  ..scale(0.5, 0.5)
                  ..translate(0.5 * 100, 0.5 * 100))
                    : Matrix4.identity(),
              ),
              RaisedButton(
                child: Text('Tap Me'),
                onPressed: () {
                  setState(() => isChanged1 = !isChanged1);
                },
              ),
              SizedBox(height: 10),
              Text("Effect Animated",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              AnimatedContainer(
                duration: Duration(milliseconds: 500),
                width:  100,
                height: 100,
                decoration: BoxDecoration(
                  color: isChanged2 ? Colors.orange : Colors.blue,
                  borderRadius: BorderRadius.all(
                    Radius.circular(isChanged2 ? 16 : 0),
                  ),
                  border: Border.all(
                    color: isChanged2 ? Colors.blue : Colors.orange,
                    width: 4,
                  ),
                ),
                transform: isChanged2
                    ? (Matrix4.identity()
                  ..scale(0.5, 0.5)
                  ..translate(0.5 * 100, 0.5 * 100))
                    : Matrix4.identity(),
                curve: Curves.bounceInOut,
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