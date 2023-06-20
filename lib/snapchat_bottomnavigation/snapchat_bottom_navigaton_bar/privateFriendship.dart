import 'package:flutter/material.dart';

Widget friendshipsPrivate(context) {
  return Padding(
    padding: EdgeInsets.only(left: 15, right: 15),
    child: Container(
      height: 90,
      decoration: BoxDecoration(
        color: Colors.pink,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.yellow,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Friendships are private",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              Padding(
                padding: EdgeInsets.only(right: 8, top: 12),
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.9,
                  child: Text(
                    "Screenshotting Friensdhips profile will send",
                    style: TextStyle(
                      color: Colors.grey,
                      height: 1.2,
                      letterSpacing: 0.6,
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(
              Icons.cancel_outlined,
              color: Colors.grey,
            ),
          )
        ],
      ),
    ),
  );
}
