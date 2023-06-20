import 'package:flutter/material.dart';

Widget bitmoji_text(text) {
  return Padding(
    padding: EdgeInsets.only(left: 8),
    child: Text(
      text,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: Colors.black38,
      ),
    ),
  );
}
