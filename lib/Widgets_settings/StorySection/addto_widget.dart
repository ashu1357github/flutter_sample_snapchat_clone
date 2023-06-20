import 'package:flutter/material.dart';

Widget addto_widget(text) {
  return Padding(
    padding: EdgeInsets.only(left: 15, right: 15, top: 8),
    child: Container(
      height: 70,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
          boxShadow: [
            BoxShadow(
              color: Colors.black38,
              blurRadius: 1,
              spreadRadius: 1,
              offset: Offset(0, 2),
            )
          ]),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 8),
            child: Icon(
              Icons.camera_alt_rounded,
              color: Colors.blue,
              size: 32,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8),
            child: Text(
              "Add to $text Story",
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(right: 8),
            child: Icon(
              Icons.more_horiz_rounded,
              color: Colors.grey[340],
              size: 30,
            ),
          )
        ],
      ),
    ),
  );
}
