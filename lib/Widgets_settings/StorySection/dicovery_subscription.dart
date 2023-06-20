import 'package:flutter/material.dart';

Widget discovery(String Headline) {
  return Padding(
    padding: EdgeInsets.only(right: 8),
    child: Container(
      alignment: Alignment.bottomLeft,
      height: 60,
      width: 96,
      decoration: BoxDecoration(
          color: Colors.blueAccent, borderRadius: BorderRadius.circular(5)),
      child: Padding(
        padding: EdgeInsets.only(bottom: 4, left: 4, right: 2),
        child: Text(
          Headline,
          maxLines: 5,
          textAlign: TextAlign.left,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700),
        ),
      ),
    ),
  );
}
