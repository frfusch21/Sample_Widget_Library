import 'package:flutter/material.dart';
import 'package:widget_library/widgets/AnimatedContainer1.dart';
import 'package:widget_library/widgets/AnimatedContainer2.dart';
import 'package:widget_library/widgets/BarChartStatic.dart';


void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
            Image.asset('assets/images/books.png',
              fit: BoxFit.contain,
              width: 200,),
            Text("WELCOME TO MY FLUTTER WIDGET LIBRARY!",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            RaisedButton(
              child: Text("Let's go"),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => TableOfContent()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class TableOfContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Widget Library')),
      body: Column(
        children: <Widget> [
          Row(
            children: <Widget>[
              Container(
                padding: new EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      child: Text("Animated \n Container 1"),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => AnimatedContainer1()));
                      },
                    ),
                  ],
                ),
              ),
              Container(
               padding: new EdgeInsets.all(10.0),
               child:
                Column(
                  children: <Widget>[
                   RaisedButton(
                    child: Text("Animated \n Container 2"),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => AnimatedContainer2()));
                    },
                  ),
                 ],
                ),
              ),
              Container(
                  padding: new EdgeInsets.all(5.0),
                  child: Column(
                    children: <Widget>[

                      RaisedButton(
                        child: Text("Bar Chart \n Static"),
                       onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => BarChartStatic()));
                        },
                      ),
                    ],
                  )
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                child: Column()
              ),
              Container(
                  child: Column()
              ),
              Container(
                  child: Column()
              ),
            ],
          ),
        ],
      ),
    );
  }
}