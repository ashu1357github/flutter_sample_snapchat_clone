import 'package:flutter/material.dart';

Widget suscribeWidget(alreadysuscribed) {
  return alreadysuscribed
      ? Container()
      : Padding(
          padding: EdgeInsets.only(right: 8),
          child: Container(
            width: 110,
            height: 30,
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.bookmark_border_rounded,
                  size: 28,
                  color: Colors.black,
                ),
                Text(
                  "Suscribe",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                  ),
                )
              ],
            ),
          ),
        );
}
