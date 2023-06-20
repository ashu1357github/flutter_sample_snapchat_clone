import 'package:flutter/material.dart';

Widget bitmoji_section() {
  return Padding(
    padding: EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 12),
    child: Row(
      children: [
        Text(
          "Bitmoji",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        )
      ],
    ),
  );
}
