import 'package:flutter/material.dart';

Widget trendinglenses_userName(context) {
  return Padding(
    padding: EdgeInsets.only(left: 8),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              child: Text(
                "Dog Lens",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
        Text(
          "Snpachat",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.grey[150],
          ),
        )
      ],
    ),
  );
}
