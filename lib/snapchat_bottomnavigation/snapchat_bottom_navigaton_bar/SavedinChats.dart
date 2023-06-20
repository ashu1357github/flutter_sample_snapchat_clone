import 'package:flutter/material.dart';

Widget savedINChatItem() {
  return Expanded(
    child: Padding(
      padding: EdgeInsets.only(left: 4, right: 4),
      child: Container(
        height: 150,
        decoration: BoxDecoration(
            color: Colors.pink, borderRadius: BorderRadius.circular(10)),
      ),
    ),
  );
}
