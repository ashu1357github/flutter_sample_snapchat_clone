import 'package:flutter/material.dart';
import 'package:snpachat_application/Widgets_settings/serch_screen/recentitem.dart';
import 'package:snpachat_application/Widgets_settings/serch_screen/story_widget.dart';
import 'package:snpachat_application/Widgets_settings/serch_screen/suscribe.dart';
import 'package:snpachat_application/Widgets_settings/serch_screen/trendinglens_username_widget.dart';
import 'package:snpachat_application/Widgets_settings/serch_screen/userName_widget.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  FocusNode inputnode = FocusNode();
  void openkeyboard() {
    FocusScope.of(context).requestFocus(inputnode);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[200],
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Expanded(
              child: Container(
                height: 45,
                decoration: BoxDecoration(
                    color: Colors.grey[350],
                    borderRadius: BorderRadius.circular(19)),
                child: TextField(
                  focusNode: inputnode,
                  autofocus: true,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                        size: 32,
                      ),
                      hintText: "Search",
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      )),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Padding(
                padding: EdgeInsets.only(left: 8),
                child: Container(
                  child: Text(
                    "Cancel",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      body: Container(
        color: Colors.grey[240],
        child: Padding(
          padding: EdgeInsets.only(left: 15, right: 15, top: 20),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text(
                      "Recents",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      "Clear All",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  )
                ],
              ),
              Container(
                height: 170,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(right: 8, bottom: 8, top: 4),
                  children: [
                    //Todo-- recentitems widget
                    recent_widget(),
                    recent_widget(),
                    recent_widget(),
                    recent_widget(),
                    recent_widget(),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 16, top: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text(
                        "Games & Minis",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 19,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //! 1
              Container(
                height: 65,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 8, bottom: 8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //Todo:
                      storyWidget(false),
                      userName(context),
                      Spacer(),
                      suscribeWidget(false)
                    ],
                  ),
                ),
              ),
              Divider(
                height: 0.23,
                color: Colors.grey[450],
              ),
              //! 2
              Container(
                height: 75,
                decoration: BoxDecoration(
                  color: Colors.white,
                  // borderRadius: BorderRadius.only(
                  //   topLeft: Radius.circular(12),
                  //   topRight: Radius.circular(12),
                  // ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 8, bottom: 8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //Todo:
                      storyWidget(true),
                      userName(context),
                      Spacer(),
                      suscribeWidget(true)
                    ],
                  ),
                ),
              ),
              Divider(
                height: 0.23,
                color: Colors.grey[450],
              ),
              //! 3
              Container(
                height: 75,
                decoration: BoxDecoration(
                  color: Colors.white,
                  // borderRadius: BorderRadius.only(
                  //   topLeft: Radius.circular(12),
                  //   topRight: Radius.circular(12),
                  // ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 8, bottom: 8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //Todo:
                      storyWidget(true),
                      userName(context),
                      Spacer(),
                      suscribeWidget(false)
                    ],
                  ),
                ),
              ),
              //!Done
              Divider(
                height: 0.23,
                color: Colors.grey[450],
              ),
              Container(
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 8, bottom: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "View More",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 16, bottom: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text("Trending Lenses",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w800,
                              fontSize: 19)),
                    ),
                    Row(
                      children: [
                        Container(
                          child: Text("Explore Lenses",
                              style: TextStyle(
                                  color: Colors.grey[140],
                                  fontWeight: FontWeight.w800,
                                  fontSize: 19)),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.grey[150],
                          size: 32,
                        )
                      ],
                    )
                  ],
                ),
              ),
              //!1
              Container(
                height: 65,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 8, bottom: 8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //Todo:
                      storyWidget(true),
                      trendinglenses_userName(context),
                    ],
                  ),
                ),
              ),
              //!2
              Divider(
                height: 0.23,
                color: Colors.grey[450],
              ),

              Container(
                height: 65,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 8, bottom: 8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //Todo:
                      storyWidget(true),
                      trendinglenses_userName(context),
                    ],
                  ),
                ),
              ),
              //!3

              Divider(
                height: 0.23,
                color: Colors.grey[450],
              ),

              Container(
                height: 65,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 8, bottom: 8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //Todo:
                      storyWidget(true),
                      trendinglenses_userName(context),
                    ],
                  ),
                ),
              ),
              //!Done
              Divider(
                height: 0.23,
                color: Colors.grey[450],
              ),

              Container(
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 8, bottom: 8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "View More",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                      //Todo:
                    ],
                  ),
                ),
              ),
              Divider(
                height: 0.23,
                color: Colors.grey[450],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
