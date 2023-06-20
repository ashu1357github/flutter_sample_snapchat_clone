import 'package:flutter/material.dart';

Widget userNamewidget(name) {
  return Padding(
    padding: EdgeInsets.only(top: 10, bottom: 10),
    child: Text(
      name,
      style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 20,
          color: Colors.black,
          letterSpacing: 0.5),
    ),
  );
}
