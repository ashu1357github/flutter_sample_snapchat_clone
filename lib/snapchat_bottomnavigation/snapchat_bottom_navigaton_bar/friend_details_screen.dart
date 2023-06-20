import 'package:flutter/material.dart';
import 'package:flutter_swipe_detector/flutter_swipe_detector.dart';
import 'package:snpachat_application/Widgets_settings/UserDetailsWidget/friend_section_widget.dart';
import 'package:snpachat_application/snapchat_bottomnavigation/snapchat_bottom_navigaton_bar/ChatAttachments_widgets.dart';
import 'package:snpachat_application/snapchat_bottomnavigation/snapchat_bottom_navigaton_bar/SavedinChats.dart';
import 'package:snpachat_application/snapchat_bottomnavigation/snapchat_bottom_navigaton_bar/charmItemWidget.dart';
import 'package:snpachat_application/snapchat_bottomnavigation/snapchat_bottom_navigaton_bar/privateFriendship.dart';
import 'package:snpachat_application/snapchat_bottomnavigation/snapchat_bottom_navigaton_bar/snapMapText_widget.dart';

class FriendDetails extends StatefulWidget {
  const FriendDetails({super.key});

  @override
  State<FriendDetails> createState() => _FriendDetailsState();
}

class _FriendDetailsState extends State<FriendDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: Padding(
          padding: EdgeInsets.only(top: 25),
          child: AppBar(
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            elevation: 5,
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
                          size: 30,
                        ),
                      )),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 8, right: 8),
                        child: Icon(
                          Icons.supervised_user_circle,
                          color: Colors.blue,
                          size: 30,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          //openAddEntryDialog();

                          showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            context: context,
                            builder: (context) {
                              return Padding(
                                padding: EdgeInsets.only(left: 0, right: 0),
                                child: Container(
                                  color: Colors.transparent,
                                  height: 673,
                                  child: Column(children: [
                                    // moreItems("Report",Colors.red,true),
                                    // Divider(height: 1,),
                                    // moreItems("Block",Colors.red,false),
                                    // Divider(height: 1,),
                                    // moreItems("Report",Colors.red,true),
                                    // Divider(height: 1,),
                                    // moreItems("Block",Colors.red,false),
                                    // Divider(height: 1,),
                                    // moreItemsTwoText("Delete Chats","24 Hours after Viewing"),
                                    //   Divider(height: 1,)
                                    // moreItemsTwoText("Delete Chats","24 Hours after Viewing"),
                                    //   Divider(height: 1,)
                                    //   moreItemsStoryNotification("Story Notifiaction"),
                                    // Divider(height: 1,),

                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Container(
                                        alignment: Alignment.center,
                                        height: 55,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child: Text(
                                          "Done",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    )
                                  ]),
                                ),
                              );
                            },
                          );
                        },
                        child: Icon(
                          Icons.more_vert_outlined,
                          color: Colors.black,
                          size: 30,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      body: SwipeDetector(
        onSwipeLeft: (offset) {
          Navigator.pop(context);
        },
        onSwipeRight: (offset) {
          Navigator.pop(context);
        },
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              child: Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(top: 18),
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.yellow,
                              shape: BoxShape.circle,
                            ),
                          )),
                      Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Text(
                          "Faiz",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8),
                        child: Text(
                          "f_101 * 28,919 * T",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 30, bottom: 15),
                        child: Text(
                          "34 kms Away",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      friendshipsPrivate(context),
                      snapMapText1("Snap Map"),
                      SizedBox(
                        height: 4,
                      ),
                      friend_section_widget(
                          " Add My Location", Icons.location_city_outlined),
                      friend_section_widget(
                          " Change My Location", Icons.location_city_outlined),
                      snapMapText1("Saved In Chat"),
                      Padding(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        child: Container(
                          height: 160,
                          decoration: BoxDecoration(
                              color: Colors.yellow,
                              borderRadius: BorderRadius.circular(18),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 1,
                                  spreadRadius: 2,
                                  offset: Offset(0, 1),
                                )
                              ]),
                          child: Row(
                            children: [
                              savedINChatItem(),
                              savedINChatItem(),
                              savedINChatItem(),
                              savedINChatItem(),
                            ],
                          ),
                        ),
                      ),
                      snapMapText1("Chat Attachments"),
                      chatAttachment(),
                      snapMapText1("Charms"),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Container(
                          height: 150,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              charmItem1(),
                              charmItem1(),
                              charmItem1(),
                              charmItem1(),
                              charmItem1(),
                              charmItem1(),
                              charmItem1(),
                              charmItem1(),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 38),
                        child: Icon(
                          Icons.gavel_sharp,
                          color: Colors.grey,
                          size: 30,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Text(
                          "Friends With faiz since 31 october 2018",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 75,
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
