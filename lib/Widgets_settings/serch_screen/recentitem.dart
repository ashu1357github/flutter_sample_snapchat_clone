import 'package:flutter/material.dart';

Widget recent_widget() {
  return Padding(
    padding: EdgeInsets.only(right: 8),
    child: Container(
      width: 115,
      alignment: Alignment.bottomLeft,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(9), boxShadow: [
        BoxShadow(
          spreadRadius: 1,
          blurRadius: 1,
          color: Colors.white,
          offset: Offset(0, 2),
        )
      ]),
      child: Padding(
        padding: EdgeInsets.only(left: 4, bottom: 4, right: 2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              height: 70,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                    ),
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 2),
                        color: Colors.black,
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://vectorified.com/images/snapchat-icon-png-35.png",
                          ),
                          fit: BoxFit.cover,
                        ),
                        shape: BoxShape.circle),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 8),
              child: Text(
                "Jeniffer anikston is op",
                maxLines: 1,
                textAlign: TextAlign.center,
                overflow: TextOverflow.fade,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Container(
              width: 85,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.grey[350],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(
                Icons.bookmark,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    ),
  );
}
