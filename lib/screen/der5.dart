import 'package:flutter/material.dart';
import 'package:snpachat_application/Widgets_settings/StorySection/dicovery_subscription.dart';
import 'package:snpachat_application/Widgets_settings/StorySection/foryou_section.dart';
import 'package:snpachat_application/snapchat_bottomnavigation/userscreen.dart';

import '../Widgets_settings/serch_screen/Add_friends/addfriend_widget.dart';
import '../Widgets_settings/serch_screen/search_screen.dart';

class der5 extends StatefulWidget {
  const der5({super.key});

  @override
  State<der5> createState() => _der5State();
}

class _der5State extends State<der5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        titleSpacing: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return userDetails();
                    });
              },
              child: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => userDetails()));
                  },
                  icon: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Icon(
                      Icons.supervised_user_circle,
                      color: Colors.black,
                      size: 30,
                    ),
                  )),
            ),

            //todo: make a serch screen
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Search()));
              },
            ),
            Expanded(
                child: Center(
              child: Text(
                "Discover",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ))
          ],
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
        actions: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      builder: (context) {
                        //Todo: add a friends_section
                        return addfriends();
                      });
                },
                child: Padding(
                  padding: EdgeInsets.only(left: 45, right: 8),
                  child: Icon(
                    Icons.add_circle_outline_rounded,
                    color: Colors.white,
                    size: 32,
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
          Expanded(
            child: ListView(
              padding: EdgeInsets.only(top: 8, left: 10),
              children: [
                Container(
                    child: Text(
                  "Discover Subscription",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                )),
                Container(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.only(
                      right: 8,
                      bottom: 8,
                      top: 4,
                    ),
                    children: [
                      discovery(
                          "The top choice to replace the deep in fantastic bluprint"),
                      discovery(
                          "The top choice to replace the deep in fantastic bluprint"),
                      discovery(
                          "The top choice to replace the deep in fantastic bluprint"),
                      discovery(
                          "The top choice to replace the deep in fantastic bluprint"),
                      discovery(
                          "The top choice to replace the deep in fantastic bluprint"),
                      discovery(
                          "The top choice to replace the deep in fantastic bluprint"),
                    ],
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  child: Text(
                    "Contionue Watching",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                    ),
                  ),
                ),
                Container(
                  height: 170,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.only(
                      right: 8,
                      bottom: 8,
                      top: 4,
                    ),
                    children: [
                      discovery(
                          "The top choice to replace the deep in fantastic bluprint"),
                      discovery(
                          "The top choice to replace the deep in fantastic bluprint"),
                      discovery(
                          "The top choice to replace the deep in fantastic bluprint"),
                    ],
                  ),
                ),
                SizedBox(height: 9),
                Container(
                  child: Text(
                    "For You",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10, top: 2),
                  child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: 1 / 1.6,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 13,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      foryousection("No gain are important than these gain."),
                      foryousection("No gain are important than these gain."),
                      foryousection("No gain are important than these gain."),
                      foryousection("No gain are important than these gain."),
                      foryousection("No gain are important than these gain."),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
