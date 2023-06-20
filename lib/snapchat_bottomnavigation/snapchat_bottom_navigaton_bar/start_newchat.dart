import 'package:flutter/material.dart';
import 'package:snpachat_application/snapchat_bottomnavigation/snapchat_bottom_navigaton_bar/username_widget2.dart';

class NewChat extends StatefulWidget {
  const NewChat({super.key});

  @override
  State<NewChat> createState() => _NewChatState();
}

class _NewChatState extends State<NewChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "New Chat",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 25,
            color: Colors.blue,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: EdgeInsets.only(right: 8),
              child: Icon(
                Icons.cancel_outlined,
                color: Colors.black,
                size: 30,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(right: 15, left: 15),
        child: ListView(
          children: [
            Divider(
              thickness: 0.3,
              color: Colors.grey,
            ),
            Row(
              children: [
                Text(
                  "To",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
                Flexible(
                    child: Padding(
                  padding: EdgeInsets.all(8),
                  child: TextField(
                    autofocus: true,
                    decoration: InputDecoration(
                      hintText: "Enter Name",
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                    ),
                  ),
                ))
              ],
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 8),
              child: Container(
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 8),
                      child: Icon(
                        Icons.supervised_user_circle,
                        color: Colors.blueAccent,
                      ),
                    ),
                    Text(
                      "New Group",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 12, bottom: 12),
              child: Text(
                "RECENTS",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 25,
                  color: Colors.blue,
                ),
              ),
            ),
            userNamewidget("Ashish"),
            Divider(
              thickness: 0.5,
              color: Colors.grey,
            ),
            userNamewidget("Ashish"),
            Divider(
              thickness: 0.5,
              color: Colors.grey,
            ),
            userNamewidget("Ashish"),
            Divider(
              thickness: 0.5,
              color: Colors.grey,
            ),
            userNamewidget("Ashish"),
            Divider(
              thickness: 0.5,
              color: Colors.grey,
            ),
            userNamewidget("Ashish"),
            Divider(
              thickness: 0.5,
              color: Colors.grey,
            ),
            userNamewidget("Ashish"),
            Divider(
              thickness: 0.5,
              color: Colors.grey,
            ),
            userNamewidget("Ashish"),
            Divider(
              thickness: 0.5,
              color: Colors.grey,
            ),
            userNamewidget("Ashish"),
            Divider(
              thickness: 0.5,
              color: Colors.grey,
            ),
            userNamewidget("Ashish"),
            Divider(
              thickness: 0.5,
              color: Colors.grey,
            ),
            userNamewidget("Ashish"),
            Divider(
              thickness: 0.5,
              color: Colors.grey,
            ),
            userNamewidget("Ashish"),
            Divider(
              thickness: 0.5,
              color: Colors.grey,
            ),
            userNamewidget("Ashish"),
            Divider(
              thickness: 0.5,
              color: Colors.grey,
            ),
            userNamewidget("Ashish"),
            Divider(
              thickness: 0.5,
              color: Colors.grey,
            ),
            userNamewidget("Ashish"),
            Divider(
              thickness: 0.5,
              color: Colors.grey,
            ),
            userNamewidget("Ashish"),
            Divider(
              thickness: 0.5,
              color: Colors.grey,
            ),
            userNamewidget("Ashish"),
            Divider(
              thickness: 0.5,
              color: Colors.grey,
            ),
            userNamewidget("Ashish"),
            Divider(
              thickness: 0.5,
              color: Colors.grey,
            ),
            userNamewidget("Ashish"),
            Divider(
              thickness: 0.5,
              color: Colors.grey,
            ),
            userNamewidget("Ashish"),
            Divider(
              thickness: 0.5,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
