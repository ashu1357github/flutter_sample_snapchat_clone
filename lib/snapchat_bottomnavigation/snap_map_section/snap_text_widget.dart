import 'package:flutter/material.dart';

Widget snaptext() {
  return Padding(
    padding: EdgeInsets.only(
      left: 15,
      right: 15,
      top: 12,
      bottom: 20,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Snap Map",
          style: TextStyle(
              color: Colors.black38, fontSize: 30, fontWeight: FontWeight.w600),
        )
      ],
    ),
  );
}
