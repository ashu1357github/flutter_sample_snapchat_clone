import 'package:flutter/material.dart';
import 'package:snpachat_application/snapchat_bottomnavigation/snapchat_bottom_navigaton_bar/camera_screen.dart';

Widget bottomBarChat1(context) {
  return Align(
    alignment: Alignment.bottomCenter,
    child: Container(
      height: 50,
      color: Colors.red,
      child: Row(
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => CameraScreen()));
                },
                child: Padding(
                  padding: EdgeInsets.only(left: 4),
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8, right: 8),
                child: Container(
                  width: 220,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  padding: EdgeInsets.only(left: 15),
                  child: TextField(
                    autofocus: true,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        focusedErrorBorder: InputBorder.none,
                        hintText: "Send a Chat"),
                  ),
                ),
              )
            ],
          ),
          Spacer(),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 4, right: 4),
                child: Icon(
                  Icons.emoji_emotions_outlined,
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 4, right: 4),
                child: Icon(
                  Icons.image,
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 4, right: 8),
                child: Icon(
                  Icons.radio_button_checked_outlined,
                  color: Colors.black,
                ),
              ),
            ],
          )
        ],
      ),
    ),
  );
}
