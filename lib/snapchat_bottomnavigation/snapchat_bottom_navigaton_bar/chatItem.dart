import 'package:flutter/material.dart';
import 'package:snpachat_application/snapchat_bottomnavigation/snapchat_bottom_navigaton_bar/chat_screen.dart';

Widget chatItem(context, name, activeStory, time, loaded) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => Chat(name),
        ),
      );
    },
    child: Padding(
      padding: EdgeInsets.only(top: 4, bottom: 4),
      child: Container(
        height: 45,
        child: Row(
          children: [
            Row(
              children: [
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    border: activeStory
                        ? Border.all(color: Colors.blue)
                        : Border.all(color: Colors.transparent),
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(2),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey, shape: BoxShape.circle),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          name,
                          overflow: TextOverflow.clip,
                          maxLines: 1,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 21,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 4),
                            child: Container(
                              height: 15,
                              width: 15,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(6),
                              ),
                            ),
                          ),
                          Text(loaded ? "New Snap" : "Tap to load",
                              style: TextStyle(
                                  color: Colors.purple,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700)),
                          Text(
                            " * ",
                            style: TextStyle(
                              color: Colors.grey[100],
                            ),
                          ),
                          Text(
                            time,
                            style: TextStyle(
                              color: Colors.grey[100],
                              fontWeight: FontWeight.w700,
                              fontSize: 15,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Spacer(),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  border: Border(
                      left: BorderSide(
                color: Colors.grey,
              ))),
              child: Icon(Icons.message_rounded, color: Colors.grey),
            )
          ],
        ),
      ),
    ),
  );
}
