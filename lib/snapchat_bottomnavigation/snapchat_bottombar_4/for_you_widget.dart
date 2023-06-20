import 'package:flutter/material.dart';

Widget forYou_widget(String headline, isVerified) {
  return Container(
    alignment: Alignment.bottomLeft,
    decoration: BoxDecoration(
      color: Colors.blue,
      borderRadius: BorderRadius.circular(5),
    ),
    child: Padding(
      padding: const EdgeInsets.only(left: 6, bottom: 6, right: 3),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            headline,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              height: 1.4,
              fontSize: 21,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 4, bottom: 2, top: 2),
            child: Row(
              children: [
                isVerified
                    ? Container(
                        height: 14,
                        width: 14,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.yellow),
                        child: Icon(
                          Icons.star,
                          color: Colors.black,
                          size: 12,
                        ),
                      )
                    : Container(),
                Padding(
                  padding: EdgeInsets.only(left: 4),
                  child: Text(
                    "Today",
                    style: TextStyle(
                      color: Colors.grey[700],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}
