import 'package:flutter/material.dart';

Widget friend_text() {
  return Padding(
    padding: EdgeInsets.only(
      left: 15,
      right: 15,
      top: 14,
      bottom: 20,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Friends",
          style: TextStyle(
            fontSize: 23,
            color: Colors.black54,
            fontWeight: FontWeight.w800,
          ),
        )
      ],
    ),
  );
}
