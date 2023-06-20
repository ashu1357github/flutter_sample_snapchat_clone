import 'package:flutter/material.dart';
import 'package:flutter_swipe_detector/flutter_swipe_detector.dart';
import 'package:snpachat_application/Widgets_settings/StorySection/addto_widget.dart';
import 'package:snpachat_application/Widgets_settings/StorySection/privatestories_widget.dart';
import 'package:snpachat_application/Widgets_settings/StorySection/storiesText_Widget.dart';
import 'package:snpachat_application/Widgets_settings/UserDetailsWidget/friend_section_widget.dart';
import 'package:snpachat_application/Widgets_settings/UserDetailsWidget/friend_text_widget.dart';
import 'package:snpachat_application/Widgets_settings/bitmoji_section/bitmoji_Widget1.dart';
import 'package:snpachat_application/Widgets_settings/bitmoji_section/bitmoji_section.dart';
import 'package:snpachat_application/Widgets_settings/bitmoji_section/bitmoji_widget3.dart';
import 'package:snpachat_application/snapchat_bottomnavigation/setting.dart';
import 'package:snpachat_application/snapchat_bottomnavigation/snap_map_section/snap_map_widget.dart';
import 'package:snpachat_application/snapchat_bottomnavigation/snap_map_section/snap_text_widget.dart';

import '../Widgets_settings/bitmoji_section/bitmoji_widget2.dart';

class userDetails extends StatefulWidget {
  const userDetails({super.key});

  @override
  State<userDetails> createState() => _userDetailsState();
}

class _userDetailsState extends State<userDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: Padding(
          padding: EdgeInsets.only(top: 30),
          child: AppBar(
            backgroundColor: Colors.white,
            elevation: 5,
            automaticallyImplyLeading: false,
            title: Padding(
              padding: EdgeInsets.all(18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Icon(
                          Icons.keyboard_arrow_down_outlined,
                          color: Colors.black,
                        )),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => Setting()));
                    },
                    child: Icon(
                      Icons.settings,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      body: SwipeDetector(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 18),
                    child: Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Text(
                      "Ashish Patil",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8, left: 7),
                    child: Text("Call Me Thanos *1357 *Cyrus",
                        style: TextStyle(
                            color: Colors.grey[500],
                            fontSize: 16,
                            fontWeight: FontWeight.w700)),
                  ),
                  //! Todo: Some Screens are to be implemented
                  storiesTextwidget(),
                  SizedBox(
                    height: 5,
                  ),
                  addto_widget("MY"),
                  addto_widget("Our"),
                  //? Todo:private story widget,
                  privatestories_widget(),
                  //! Todo:friend text
                  friend_text(),
                  //! Todo:friend sections
                  friend_section_widget(
                      " Add Friends", Icons.supervised_user_circle_outlined),
                  SizedBox(
                    height: 4,
                  ),
                  friend_section_widget(" My Friends", Icons.list_alt_rounded),
                  //! Todo:Bitmoji text
                  bitmoji_section(),
                  // //! Todo:Bitmojiwidget1
                  bitmojiwidget1(),
                  SizedBox(
                    height: 7,
                  ),
                  // //! Todo:Bitmojiwidget2
                  Bitmoji_Widget2(),
                  SizedBox(
                    height: 7,
                  ),
                  // //! Todo:Bitmojiwidget3
                  Bitmoji_Widget3(),
                  SizedBox(
                    height: 7,
                  ),
                  // //! Todo:some map Text
                  snaptext(),
                  //! Todo:some map Map
                  Snapmap(context),

                  Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Icon(
                      Icons.gavel_sharp,
                      color: Colors.grey[500],
                      size: 30,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15, left: 7),
                    child: Text(
                      "Joined Snapchat on  15th June 2023",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[500],
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        onSwipeLeft: (offset) {
          Navigator.pop(context);
        },
        onSwipeRight: (offset) {
          Navigator.pop(context);
        },
      ),
    );
  }
}
