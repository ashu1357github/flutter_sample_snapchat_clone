import 'package:flutter/material.dart';

Widget twoItems_Widgets(text1, text2) {
  return Container(
    padding: EdgeInsets.only(
      bottom: 12,
      top: 12,
      left: 15,
      right: 15,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text1,
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
        Text(
          text2,
          style: TextStyle(
              color: Colors.grey[350],
              fontSize: 16,
              fontWeight: FontWeight.w500),
        ),
      ],
    ),
  );
}
