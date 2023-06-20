import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:snpachat_application/Widgets_settings/serch_screen/Add_friends/add_me_widget.dart';
import 'package:snpachat_application/Widgets_settings/serch_screen/Add_friends/quickadd_widget.dart';

class addfriends extends StatefulWidget {
  const addfriends({super.key});

  @override
  State<addfriends> createState() => _addfriendsState();
}

class _addfriendsState extends State<addfriends> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[220],
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 120,
            floating: true,
            pinned: true,
            backgroundColor: Colors.grey[200],
            leading: IconButton(
                onPressed: () {},
                icon: Padding(
                  padding: EdgeInsets.only(top: 35),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new_outlined,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                )),
            actions: [
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      backgroundColor: Colors.transparent,
                      context: context,
                      builder: (context) {
                        return Padding(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: Container(
                            color: Colors.transparent,
                            height: 250,
                            child: Column(
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  height: 55,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(12),
                                        topRight: Radius.circular(12),
                                      )),
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 8),
                                    child: Text(
                                      "Hidden From Quick Adds",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                                Divider(
                                  height: 1,
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  height: 55,
                                  color: Colors.white,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 8),
                                    child: Text(
                                      "Ignored From Add Me",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                                Divider(
                                  height: 1,
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  height: 55,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(12),
                                        bottomLeft: Radius.circular(12),
                                      )),
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 8),
                                    child: Text(
                                      "Recently Added Friends",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 15,
                                  color: Colors.transparent,
                                ),
                                Divider(
                                  height: 1,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 55,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Text(
                                      "Done",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      });
                },
                child: Padding(
                  padding: EdgeInsets.only(top: 35),
                  child: Icon(
                    Icons.more_horiz_rounded,
                    color: Colors.green,
                    size: 30,
                  ),
                ),
              )
            ],
            flexibleSpace: MyAppSpace(),
          ),
          SliverList(delegate: SliverChildBuilderDelegate((context, index) {
            return Container(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 15, top: 12, bottom: 12),
                    child: Container(
                      child: Text(
                        "Added Me",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      alignment: Alignment.centerLeft,
                    ),
                  ),
                  addMe("Mountain", "mountain3655", "By Search"),
                  Divider(
                    height: 1,
                  ),
                  addMe("Mountain", "mountain3655", "By Search"),
                  Divider(
                    height: 1,
                  ),
                  addMe("Mountain", "mountain3655", "By Search"),
                  Divider(
                    height: 1,
                  ),
                  addMe("Mountain", "mountain3655", "By Search"),
                  Divider(
                    height: 1,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.only(top: 8, bottom: 8),
                        child: Text(
                          "View 60 More",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 15, right: 15, top: 10, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Quick Add",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                            )),
                      ],
                    ),
                  ),
                  quickadd("ashu patil", "ashu1356", true),
                  Divider(
                    height: 1,
                  ),
                  quickadd("ashu patil", "ashu1356", true),
                  Divider(
                    height: 1,
                  ),
                  quickadd("ashu patil", "ashu1356", true),
                  Divider(
                    height: 1,
                  ),
                  quickadd("ashu patil", "ashu1356", false),
                  Divider(
                    height: 1,
                  ),
                  quickadd("ashu patil", "ashu1356", true),
                  Divider(
                    height: 1,
                  ),
                  quickadd("ashu patil", "ashu1356", true),
                  Divider(
                    height: 1,
                  ),
                  quickadd("ashu patil", "ashu1356", true),
                  Divider(
                    height: 1,
                  ),
                  quickadd("ashu patil", "ashu1356", true),
                  Divider(
                    height: 1,
                  ),
                  quickadd("ashu patil", "ashu1356", false),
                  Divider(
                    height: 1,
                  ),
                  quickadd("ashu patil", "ashu1356", true),
                  Divider(
                    height: 1,
                  ),
                  quickadd("ashu patil", "ashu1356", true),
                  Divider(
                    height: 1,
                  ),
                  quickadd("ashu patil", "ashu1356", false),
                  Divider(
                    height: 1,
                  ),
                  quickadd("ashu patil", "ashu1356", true),
                  Divider(
                    height: 1,
                  ),
                  quickadd("ashu patil", "ashu1356", false),
                  Divider(
                    height: 1,
                  ),
                  quickadd("ashu patil", "ashu1356", true),
                  Divider(
                    height: 1,
                  ),
                  quickadd("ashu patil", "ashu1356", false),
                  Divider(
                    height: 1,
                  ),
                  quickadd("ashu patil", "ashu1356", true),
                  Divider(
                    height: 1,
                  ),
                  quickadd("ashu patil", "ashu1356", true),
                  Divider(
                    height: 1,
                  ),
                ],
              ),
            );
          }))
        ],
      ),
    );
  }
}

class MyAppSpace extends StatelessWidget {
  const MyAppSpace({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, c) {
        final settings = context
            .dependOnInheritedWidgetOfExactType<FlexibleSpaceBarSettings>();
        final deltaevent = settings!.maxExtent - settings.minExtent;
        final t =
            (1.0 - (settings.currentExtent - settings.minExtent) / deltaevent)
                .clamp(0.0, 1.0) as double;
        final fadestart = math.max(0.0, 1.0 - kTextTabBarHeight / deltaevent);
        const fadeEnd = 1.0;
        final opacity = 1.0 - Interval(fadestart, fadeEnd).transform(t);

        return Stack(
          children: [
            Center(
              child: Opacity(
                opacity: 1 - opacity,
                child: Padding(
                  padding:
                      EdgeInsets.only(left: 45, right: 45, top: 24, bottom: 0),
                  child: Container(
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8),
                              child: Icon(
                                Icons.search,
                                color: Colors.black,
                                size: 30,
                              ),
                            ),
                            Text(
                              "Find Friend",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            )
                          ],
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(left: 8, right: 8),
                          child: Icon(
                            Icons.contact_page_rounded,
                            color: Colors.black,
                            size: 30,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Opacity(
              opacity: opacity,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  getimage(),
                  Padding(
                    padding: EdgeInsets.only(left: 15, right: 15, bottom: 8),
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                          color: Colors.grey[350],
                          borderRadius: BorderRadius.circular(18)),
                      child: Row(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8),
                                child: Icon(
                                  Icons.search,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "Find Friends",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 14),
                              )
                            ],
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.all(8),
                            child: Icon(
                              Icons.contact_page_rounded,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: Opacity(
                    opacity: opacity,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [getTitle("Add friends")],
                    ),
                  ),
                )
              ],
            )
          ],
        );
      },
    );
  }
}

Widget getimage() {
  return Container(
    width: double.infinity,
    height: 120,
    color: Colors.grey[200],
  );
}

Widget getTitle(String text) {
  return Padding(
    padding: const EdgeInsets.only(top: 14),
    child: Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
          color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold),
    ),
  );
}
