import 'package:flutter/material.dart';

Widget subscription_widget(headline, isverified) {
  return Padding(
    padding: EdgeInsets.only(right: 8),
    child: Container(
      alignment: Alignment.bottomLeft,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 4, right: 4, bottom: 2, top: 2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: EdgeInsets.only(bottom: 4, left: 3),
                child: Text(
                  headline,
                  maxLines: 4,
                  textAlign: TextAlign.left,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    height: 1.4,
                    fontSize: 14,
                  ),
                )),
            isverified
                ? Padding(
                    padding: EdgeInsets.only(left: 4, bottom: 2),
                    child: Container(
                      height: 14,
                      width: 14,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.yellow),
                      child: Icon(
                        Icons.star,
                        color: Colors.black,
                        size: 12,
                      ),
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    ),
  );
}
