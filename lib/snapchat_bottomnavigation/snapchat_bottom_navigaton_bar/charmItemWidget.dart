import 'package:flutter/material.dart';

Widget charmItem1() {
  return Padding(
    padding: EdgeInsets.only(left: 8, top: 6, bottom: 4),
    child: Container(
      height: 130,
      width: 110,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.grey,
              spreadRadius: 2,
              blurRadius: 2,
              offset: Offset(0, 1))
        ],
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              Padding(
                padding: EdgeInsets.all(6),
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8)),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 5, top: 3),
                height: 20,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(22)),
                child: Text(
                  "New",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1,
                    fontSize: 13,
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 4),
            child: Text(
              "Sun Sign Compatablity",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.w600,
                letterSpacing: 1,
                fontSize: 17,
              ),
            ),
          )
        ],
      ),
    ),
  );
}
