import 'package:flutter/material.dart';
import 'package:snpachat_application/snapchat_bottomnavigation/snapchat_bottom_navigaton_bar/bottom_Bar_chat.dart';
import 'package:snpachat_application/snapchat_bottomnavigation/snapchat_bottom_navigaton_bar/chat_message.dart';
import 'package:snpachat_application/snapchat_bottomnavigation/snapchat_bottom_navigaton_bar/date.dart';
import 'package:snpachat_application/snapchat_bottomnavigation/snapchat_bottom_navigaton_bar/friend_details_screen.dart';

// ignore: must_be_immutable
class Chat extends StatefulWidget {
  Chat(this.name);
  String name;

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          widget.name,
          style: TextStyle(
              fontWeight: FontWeight.w600, color: Colors.black, fontSize: 23),
        ),
        leading: GestureDetector(
          onTap: () {
            showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) {
                return FriendDetails();
              },
            );
          },
          child: Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 15),
              child: Container(
                decoration:
                    BoxDecoration(color: Colors.pink, shape: BoxShape.circle),
              ),
            ),
          ),
        ),
        actions: [
          Row(
            children: [
              Container(
                height: 35,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(18),
                      bottomLeft: Radius.circular(18),
                    )),
                child: Center(
                  child: Icon(
                    Icons.call,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ),
              SizedBox(
                width: 1.5,
              ),
              Container(
                height: 35,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(18),
                      bottomLeft: Radius.circular(18),
                    )),
                child: Center(
                  child: Icon(
                    Icons.video_call_rounded,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: EdgeInsets.only(left: 8),
              child: Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.black,
                size: 30,
              ),
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              date("6 October 2018"),
              ChatMessage(context, Colors.blue, "Hey How Are You?"),
              date("6 October 2018"),
              ChatMessage(context, Colors.blue, "Hey How Are You?"),
              date("6 October 2018"),
              ChatMessage(context, Colors.blue, "Hey How Are You?"),
              date("6 October 2018"),
              ChatMessage(context, Colors.blue, "Hey How Are You?"),
              date("6 October 2018"),
              ChatMessage(context, Colors.red, "Hey How Are You?"),
              date("6 October 2018"),
              ChatMessage(context, Colors.blue, "Hey How Are You?"),
              date("6 October 2018"),
              ChatMessage(context, Colors.blue, "Hey How Are You?"),
              date("6 October 2018"),
              ChatMessage(context, Colors.blue, "Hey How Are You?"),
              date("6 October 2018"),
              ChatMessage(context, Colors.blue, "Hey How Are You?"),
              date("6 October 2018"),
              ChatMessage(context, Colors.red, "Hey How Are You?"),
              date("6 October 2018"),
              ChatMessage(context, Colors.blue, "Hey How Are You?"),
              date("6 October 2018"),
              ChatMessage(context, Colors.blue, "Hey How Are You?"),
              date("6 October 2018"),
              ChatMessage(context, Colors.blue, "Hey How Are You?"),
              SizedBox(
                height: 90,
              )
            ],
          ),
          bottomBarChat1(context),
        ],
      ),
    );
  }
}
