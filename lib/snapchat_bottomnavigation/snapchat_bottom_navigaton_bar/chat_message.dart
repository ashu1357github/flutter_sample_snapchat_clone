import 'package:flutter/material.dart';

Widget ChatMessage(context, color, message) {
  return Padding(
    padding: EdgeInsets.only(left: 8, right: 8, top: 8),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Text(
            color == Colors.red ? "Me" : "Vivek",
            style: TextStyle(
              color: color,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SizedBox(
          height: 2,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.grey[100],
          child: Stack(
            children: [
              Container(
                height: message.length < 45
                    ? 30
                    : message.length < 80
                        ? 50
                        : message.length < 80
                            ? 70
                            : 70,
                width: 4,
                color: color,
              ),
              Padding(
                padding: EdgeInsets.only(top: 4, bottom: 4, left: 12),
                child: Row(
                  children: [
                    Expanded(
                        child: Text(
                      message,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 5,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        letterSpacing: 0.6,
                        fontWeight: FontWeight.w600,
                      ),
                    ))
                  ],
                ),
              )
            ],
          ),
        )
      ],
    ),
  );
}
