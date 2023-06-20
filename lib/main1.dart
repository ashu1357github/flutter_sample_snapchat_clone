import 'package:flutter/material.dart';
import 'package:snpachat_application/screen/der3.dart';
import 'package:snpachat_application/screen/der1.dart';
import 'package:snpachat_application/screen/der2.dart';
import 'package:snpachat_application/screen/der4.dart';
import 'package:snpachat_application/screen/der5.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selctedItemindex = 0;
  // ignore: unused_field
  late Color _color;
  final widgetoption = [
    der1(),
    der2(),
    der3(),
    der4(),
    der5(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.black,
        ),
        padding: EdgeInsets.only(top: 10),
        child: Row(
          children: [
            buildnavigation(Icons.home, 0),
            buildnavigation(Icons.card_giftcard, 1),
            buildnavigation(Icons.camera, 2),
            buildnavigation(Icons.pie_chart, 3),
            buildnavigation(Icons.person, 4),
          ],
        ),
      ),
      body: Center(
        child: widgetoption.elementAt(_selctedItemindex),
      ),
    );
  }

  Widget buildnavigation(IconData icon, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selctedItemindex = index;
        });
      },
      child: Container(
        height: 55,
        width: MediaQuery.of(context).size.width / 5,
        decoration: index == _selctedItemindex
            ? BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 4, color: Colors.green),
                ),
                gradient: LinearGradient(colors: [
                  Colors.green.withOpacity(0.3),
                  Colors.green.withOpacity(0.015),
                ], begin: Alignment.bottomCenter, end: Alignment.topCenter))
            : BoxDecoration(),
        child: Column(
          children: [
            Icon(
              icon,
              color: index == _selctedItemindex
                  ? _selctedItemindex == 0
                      ? Colors.green
                      : _selctedItemindex == 1
                          ? Colors.blue
                          : _selctedItemindex == 2
                              ? Colors.cyan
                              : _selctedItemindex == 3
                                  ? Colors.purple
                                  : _selctedItemindex == 4
                                      ? Colors.red
                                      : Colors.greenAccent
                  : Colors.greenAccent,
            ),
            index == _selctedItemindex
                ? Icon(
                    Icons.arrow_drop_up,
                    color: index == _selctedItemindex
                        ? _selctedItemindex == 0
                            ? Colors.green
                            : _selctedItemindex == 1
                                ? Colors.blue
                                : _selctedItemindex == 2
                                    ? Colors.cyan
                                    : _selctedItemindex == 3
                                        ? Colors.purple
                                        : _selctedItemindex == 4
                                            ? Colors.yellow
                                            : Colors.deepPurple
                        : Colors.greenAccent,
                  )
                : Container()
          ],
        ),
      ),
    );
  }
}
