import 'package:flutter/material.dart';

Widget privatestories_widget() {
  return Padding(
    padding: EdgeInsets.only(left: 15, right: 15, top: 8),
    child: Container(
      height: 70,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
          boxShadow: [
            BoxShadow(
              color: Colors.black38,
              blurRadius: 1,
              spreadRadius: 2,
              offset: Offset(0, 2),
            )
          ]),
      child: Row(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 8, right: 6),
                child: Icon(
                  Icons.lock_outline_rounded,
                  color: Colors.grey[350],
                  size: 34,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 0),
                    child: Text(
                      "Create a Private Story",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 4),
                    child: Text(
                      "A story for a specific friend to seal",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(right: 8, left: 6),
            child: Icon(
              Icons.cancel_outlined,
              size: 32,
              color: Colors.grey[350],
            ),
          ),
        ],
      ),
    ),
  );
}
