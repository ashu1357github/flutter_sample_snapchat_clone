import 'package:flutter/material.dart';

Widget date(date) {
  return Padding(
    padding: EdgeInsets.only(top: 2),
    child: Container(
      child: Center(
        child: Text(
          date,
          style: TextStyle(
              fontSize: 14, color: Colors.grey, fontWeight: FontWeight.w600),
        ),
      ),
    ),
  );
}
