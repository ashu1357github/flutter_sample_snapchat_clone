import 'package:flutter/material.dart';

Widget friend_section_widget(text, icon) {
  return Padding(
    padding: EdgeInsets.only(left: 15, right: 15, top: 8),
    child: Container(
      height: 60,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
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
                padding: EdgeInsets.only(left: 8),
                child: Icon(
                  icon,
                  color: Colors.grey[350],
                  size: 30,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8),
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black38,
                  ),
                ),
              )
            ],
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(right: 8),
            child: Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.grey[350],
              size: 30,
            ),
          )
        ],
      ),
    ),
  );
}
