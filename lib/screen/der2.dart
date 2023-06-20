import 'package:flutter/material.dart';
import 'package:snpachat_application/Widgets_settings/serch_screen/Add_friends/addfriend_widget.dart';
import 'package:snpachat_application/Widgets_settings/serch_screen/search_screen.dart';
import 'package:snpachat_application/snapchat_bottomnavigation/userscreen.dart';

import '../snapchat_bottomnavigation/snapchat_bottom_navigaton_bar/chatItem.dart';
import '../snapchat_bottomnavigation/snapchat_bottom_navigaton_bar/start_newchat.dart';

class der2 extends StatefulWidget {
  const der2({super.key});

  @override
  State<der2> createState() => _der2State();
}

class _der2State extends State<der2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                //openAddEntryDialog();

                showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (context) {
                    return userDetails();
                  },
                );
              },
              child: Padding(
                padding: EdgeInsets.only(right: 0, left: 10),
                child: Icon(
                  Icons.supervised_user_circle_rounded,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => Search()));
                },
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 30,
                )),
            Expanded(
                child: Center(
              child: Text(
                "Chat",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ))
          ],
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
        actions: <Widget>[
          Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    builder: (context) {
                      return addfriends();
                    },
                  );
                },
                child: Padding(
                  padding: EdgeInsets.only(left: 45, right: 8),
                  child: Icon(
                    Icons.add_circle_outline_sharp,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => NewChat()));
                },
                child: Padding(
                  padding: EdgeInsets.only(left: 0, right: 8),
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.grey[350],
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.message_rounded,
                        color: Colors.grey[600],
                        size: 20,
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.black,
          ),
          ListView(
            padding: EdgeInsets.only(
              top: 8,
              left: 10,
            ),
            children: <Widget>[
              Divider(
                thickness: 0.3,
                color: Colors.grey,
              ),
              chatItem(context, "Vivek magar", true, "id", true),
              Divider(
                thickness: 0.3,
                color: Colors.grey,
              ),
              chatItem(context, "Vivek magar", true, "id", false),
              Divider(
                thickness: 0.3,
                color: Colors.grey,
              ),
              chatItem(context, "Vivek magar", true, "id", true),
              Divider(
                thickness: 0.3,
                color: Colors.grey,
              ),
              chatItem(context, "Vivek magar", true, "id", true),
              Divider(
                thickness: 0.3,
                color: Colors.grey,
              ),
              chatItem(context, "Vivek magar", true, "id", true),
              Divider(
                thickness: 0.3,
                color: Colors.grey,
              ),
              chatItem(context, "Vivek magar", true, "id", true),
              Divider(
                thickness: 0.3,
                color: Colors.grey,
              ),
              chatItem(context, "Vivek magar", true, "id", true),
              Divider(
                thickness: 0.3,
                color: Colors.grey,
              ),
              chatItem(context, "Vivek magar", true, "id", true),
              Divider(
                thickness: 0.3,
                color: Colors.grey,
              ),
              chatItem(context, "Vivek magar", true, "id", true),
              Divider(
                thickness: 0.3,
                color: Colors.grey,
              ),
              chatItem(context, "Vivek magar", true, "id", true),
              Divider(
                thickness: 0.3,
                color: Colors.grey,
              ),
              chatItem(context, "Vivek magar", true, "id", true),
              Divider(
                thickness: 0.3,
                color: Colors.grey,
              ),
              chatItem(context, "Vivek magar", true, "id", true),
              Divider(
                thickness: 0.3,
                color: Colors.grey,
              ),
              chatItem(context, "Vivek magar", true, "id", true),
              Divider(
                thickness: 0.3,
                color: Colors.grey,
              ),
              chatItem(context, "Vivek magar", true, "id", true),
              Divider(
                thickness: 0.3,
                color: Colors.grey,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
