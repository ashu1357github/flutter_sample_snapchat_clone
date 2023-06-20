import 'package:flutter/material.dart';

Widget foryousection(String headline) {
  return Container(
    alignment: Alignment.bottomLeft,
    decoration: BoxDecoration(
      color: Colors.blue,
      borderRadius: BorderRadius.circular(5),
    ),
    child: Padding(
      padding: const EdgeInsets.only(left: 6, bottom: 6, right: 3),
      child: Text(
        headline,
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w700,
          height: 1.4,
          fontSize: 21,
        ),
      ),
    ),
  );
}
