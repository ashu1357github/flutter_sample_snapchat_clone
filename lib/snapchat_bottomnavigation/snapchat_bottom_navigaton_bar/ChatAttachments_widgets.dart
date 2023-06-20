import 'package:flutter/material.dart';

Widget chatAttachment() {
  return Padding(
    padding: EdgeInsets.only(right: 15, left: 15),
    child: Container(
      height: 120,
      decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 1,
              spreadRadius: 2,
              offset: Offset(0, 1),
            ),
          ]),
      child: Center(
        child: Text(
          "Links ,addresses ,usernames and other attachment saved in chat",
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w600,
            fontSize: 14,
            height: 1.3,
          ),
        ),
      ),
    ),
  );
}
