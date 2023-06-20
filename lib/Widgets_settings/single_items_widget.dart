import 'package:flutter/material.dart';

Widget single_items_widget(text) {
  return Container(
    alignment: Alignment.centerLeft,
    padding: EdgeInsets.only(
      bottom: 12,
      top: 12,
      left: 15,
      right: 15,
    ),
    child: Text(
      text,
      style: TextStyle(
        fontSize: 16,
        color: Colors.black,
      ),
    ),
  );
}
