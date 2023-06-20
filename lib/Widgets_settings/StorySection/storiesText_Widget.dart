import 'package:flutter/material.dart';

Widget storiesTextwidget() {
  return Padding(
    padding: EdgeInsets.only(left: 15, right: 15, top: 28),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Stories",
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.grey[300], borderRadius: BorderRadius.circular(24)),
          child: Padding(
            padding: EdgeInsets.only(left: 12, right: 12, top: 6, bottom: 6),
            child: Text(
              "+ Private Stories",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Colors.grey[500],
              ),
            ),
          ),
        )
      ],
    ),
  );
}
