import 'package:flutter/material.dart';

Widget bitmoji_icon(icon) {
  return Padding(
    padding: EdgeInsets.only(left: 8),
    child: Icon(
      icon,
      color: Colors.grey[350],
      size: 32,
    ),
  );
}
