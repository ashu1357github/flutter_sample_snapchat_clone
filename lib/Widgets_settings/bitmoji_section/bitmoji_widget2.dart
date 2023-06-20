import 'package:flutter/material.dart';

import 'bitmoji_icon.dart';
import 'bitmoji_row.dart';
import 'bitmoji_text.dart';

Widget Bitmoji_Widget2() {
  return Padding(
    padding: EdgeInsets.only(
      left: 15,
      right: 15,
    ),
    child: Container(
      height: 70,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 2),
                color: Colors.black38,
                blurRadius: 1,
                spreadRadius: 1),
          ]),
      child: Row(
        children: [
          Row(
            children: [
              // to do icon
              bitmoji_icon(Icons.edit),
              //to do bitmojitext
              bitmoji_text("Edit My Bitmoji"),
            ],
          ),
          Spacer(),
          bitmoji_row(false),
        ],
      ),
    ),
  );
}
