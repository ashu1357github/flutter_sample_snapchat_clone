import 'package:flutter/material.dart';

Widget storyWidget(activestories) {
  return Padding(
    padding: EdgeInsets.only(left: 8),
    child: Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        border: activestories
            ? Border.all(color: Colors.black, width: 2)
            : Border.all(color: Colors.white, width: 2),
        shape: BoxShape.circle,
      ),
      child: Padding(
        padding: EdgeInsets.all(2),
        child: Container(
          height: 42,
          width: 42,
          decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.red),
        ),
      ),
    ),
  );
}
