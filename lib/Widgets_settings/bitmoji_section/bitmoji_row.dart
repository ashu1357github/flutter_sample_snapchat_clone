import 'package:flutter/material.dart';

Widget bitmoji_row(displayNew) {
  return Row(
    children: [
      displayNew
          ? Container(
              child: Padding(
                padding:
                    EdgeInsets.only(left: 12, right: 12, top: 6, bottom: 6),
                child: Text(
                  "New",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(8)),
            )
          : Container(),
      Padding(
        padding: EdgeInsets.only(left: 8, right: 8),
        child: Icon(
          Icons.arrow_forward_ios_rounded,
          color: Colors.grey[500],
          size: 30,
        ),
      )
    ],
  );
}
