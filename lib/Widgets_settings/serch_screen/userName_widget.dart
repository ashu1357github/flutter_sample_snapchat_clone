import 'package:flutter/material.dart';

Widget userName(context) {
  return Padding(
    padding: EdgeInsets.only(left: 8),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              width: 120,
              child: Text(
                "Ashish Patil",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://vectorified.com/images/snapchat-icon-png-35.png"),
                    fit: BoxFit.cover,
                  ),
                  shape: BoxShape.circle),
            )
          ],
        ),
        Text(
          "ashu1357",
          style: TextStyle(
            color: Colors.grey[350],
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    ),
  );
}
