import 'package:flutter/material.dart';

Widget categoryHeading_Widgets(context, text) {
  return Padding(
    padding: EdgeInsets.only(top: 8),
    child: Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.grey[300], borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: EdgeInsets.only(
          left: 15,
          top: 6,
          bottom: 6,
        ),
        child: Text(
          text,
          style: TextStyle(
              color: Colors.green, fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ),
    ),
  );
}
