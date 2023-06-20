import 'package:flutter/material.dart';

Widget friendMyStory() {
  return Padding(
    padding: EdgeInsets.only(bottom: 4),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Text(
            "Friends",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.grey[350], borderRadius: BorderRadius.circular(16)),
          child: Padding(
            padding: EdgeInsets.only(right: 6, left: 3, bottom: 3, top: 3),
            child: Row(
              children: [
                Icon(
                  Icons.add,
                  color: Colors.grey,
                ),
                Text(
                  "My Story",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
        )
      ],
    ),
  );
}
