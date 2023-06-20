import 'package:flutter/material.dart';

Widget snapMapText1(text) {
  return Padding(
    padding: EdgeInsets.only(top: 20, bottom: 12, right: 15, left: 15),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        )
      ],
    ),
  );
}
