import 'package:flutter/material.dart';

Widget Snapmap(context) {
  return Stack(
    children: [
      Padding(
        padding: EdgeInsets.only(left: 15, right: 15, top: 8),
        child: Container(
          height: 145,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://map.snapchat.com/static/sharepreview.jpg"),
                  fit: BoxFit.cover),
              color: Colors.black38,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 2),
                    color: Colors.black38,
                    spreadRadius: 1,
                    blurRadius: 2)
              ]),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 15, right: 15, top: 8),
        child: Container(
          height: 145,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12), color: Colors.black54),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Tap To Explore Snap Map",
                  style: TextStyle(
                      letterSpacing: 0.6,
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w700)),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.only(top: 6, bottom: 6, right: 18, left: 18),
                    child: Text(
                      "Enter",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          letterSpacing: 0.6,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      )
    ],
  );
}
