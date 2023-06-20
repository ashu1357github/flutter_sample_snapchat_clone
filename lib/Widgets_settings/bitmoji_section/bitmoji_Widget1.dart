import 'package:flutter/material.dart';
import 'package:snpachat_application/Widgets_settings/bitmoji_section/bitmoji_icon.dart';
import 'package:snpachat_application/Widgets_settings/bitmoji_section/bitmoji_row.dart';
import 'package:snpachat_application/Widgets_settings/bitmoji_section/bitmoji_text.dart';

Widget bitmojiwidget1() {
  return Padding(
    padding: EdgeInsets.only(left: 15, right: 15, top: 8),
    child: Container(
      height: 70,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 2),
                color: Colors.black38,
                blurRadius: 1,
                spreadRadius: 1),
          ]),
      child: Row(
        children: [
          Row(
            children: [
              // to do icon
              bitmoji_icon(Icons.shopping_cart),
              //to do bitmojitext
              bitmoji_text("Change My Outfit"),
            ],
          ),
          Spacer(),
          bitmoji_row(true),
        ],
      ),
    ),
  );
}
