import 'dart:math';

import 'package:flutter/material.dart';

class BarChartStatic extends StatefulWidget {

  @override
  _BarChartStaticState createState() => _BarChartStaticState();
}

class _BarChartStaticState extends State<BarChartStatic> {
  var type = 'users';
  var mon = 150.0;
  var tue = 120.0;
  var wed = 20.0;
  var thu = 130.0;
  var fri = 190.0;
  var sat = 110.0;
  var sun = 87.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget Library'),
      ),
      body:Center(
        child: Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (type == 'users') return;
                          type = 'users';
                          _changeType();
                        });
                      },
                      child: Text(
                        'Users',
                        style: TextStyle(
                          fontWeight: type == 'users' ? FontWeight.bold : FontWeight.normal,
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (type == 'sessions') return;
                          type = 'sessions';
                          _changeType();
                        });
                      },
                      child: Text(
                        'Sessions',
                        style: TextStyle(
                          fontWeight: type == 'sessions' ? FontWeight.bold : FontWeight.normal,
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (type == 'interactions') return;
                          type = 'interactions';
                          _changeType();
                        });
                      },
                      child: Text(
                        'Interactions',
                        style: TextStyle(
                          fontWeight: type == 'interactions' ? FontWeight.bold : FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                SizedBox(
                  height: 200,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 30,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text('400'),
                            Text('300'),
                            Text('200'),
                            Text('100'),
                            Text('0'),
                          ],
                        ),
                      ),
                      _buildWidgetBarChart(mon),
                      _buildWidgetBarChart(tue),
                      _buildWidgetBarChart(wed),
                      _buildWidgetBarChart(thu),
                      _buildWidgetBarChart(fri),
                      _buildWidgetBarChart(sat),
                      _buildWidgetBarChart(sun),
                    ],
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 30,
                      child: Text(''),
                    ),
                    SizedBox(
                      width: 30,
                      child: Text(
                        'Mon',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      width: 30,
                      child: Text(
                        'Tue',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      width: 30,
                      child: Text(
                        'Wed',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      width: 30,
                      child: Text(
                        'Thu',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      width: 30,
                      child: Text(
                        'Fri',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      width: 30,
                      child: Text(
                        'Sat',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      width: 30,
                      child: Text(
                        'Sun',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _changeType() {
    mon = Random().nextInt(200).floorToDouble();
    tue = Random().nextInt(200).floorToDouble();
    wed = Random().nextInt(200).floorToDouble();
    thu = Random().nextInt(200).floorToDouble();
    fri = Random().nextInt(200).floorToDouble();
    sat = Random().nextInt(200).floorToDouble();
    sun = Random().nextInt(200).floorToDouble();
  }

  Widget _buildWidgetBarChart(double value) {
    return SizedBox(
      width: 30,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 200,
              width: 6,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
                color: Colors.grey[200],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: AnimatedContainer(
              duration: Duration(milliseconds: 500),
              curve: Curves.fastOutSlowIn,
              height: value,
              width: 6,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}