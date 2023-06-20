import 'package:flutter/material.dart';
import 'package:snpachat_application/Widgets_settings/serch_screen/Add_friends/addfriend_widget.dart';
import 'package:snpachat_application/Widgets_settings/serch_screen/search_screen.dart';
import 'package:snpachat_application/snapchat_bottomnavigation/userscreen.dart';
import '../snapchat_bottomnavigation/snapchat_bottombar_4/for_you_widget.dart';
import '../snapchat_bottomnavigation/snapchat_bottombar_4/friends_mystoryies_widget.dart';
import '../snapchat_bottomnavigation/snapchat_bottombar_4/friends_widget.dart';
import '../snapchat_bottomnavigation/snapchat_bottombar_4/subscription_widget.dart';

class der4 extends StatefulWidget {
  const der4({super.key});

  @override
  State<der4> createState() => _der4State();
}

class _der4State extends State<der4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        titleSpacing: 0,
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
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Search();
                    },
                  );
                },
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 30,
                )),
            Expanded(
                child: Center(
              child: Text(
                "Stories",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
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
                  //openAddEntryDialog();

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
                    Icons.add_box_sharp,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    backgroundColor: Colors.transparent,
                    builder: (context) {
                      return Padding(
                        padding: EdgeInsets.only(),
                        child: Container(
                          height: 160,
                          color: Colors.transparent,
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                height: 55,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(12),
                                    topRight: Radius.circular(12),
                                  ),
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(left: 8),
                                  child: Text(
                                    "Managed Suscriptions and Notifications",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                              Divider(
                                height: 0.35,
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                height: 55,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      // topLeft: Radius.circular(12),
                                      // topRight: Radius.circular(12),
                                      ),
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(left: 8),
                                  child: Text(
                                    "View Hidden Channels",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                              Divider(
                                height: 0.35,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 45,
                                  decoration:
                                      BoxDecoration(color: Colors.white),
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
                    },
                  );
                },
                child: Padding(
                  padding: EdgeInsets.only(left: 0, right: 8),
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.more_horiz_rounded,
                        color: Colors.white,
                        size: 30,
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
            padding: EdgeInsets.only(top: 8, left: 10),
            children: [
              friendMyStory(),
              Container(
                height: 145,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(right: 0, bottom: 8, top: 4),
                  children: <Widget>[
                    friends("hemu22"),
                    friends("KapilRaj"),
                    friends("Tanveer"),
                    friends("rahul"),
                    friends("rohit"),
                    friends("ashu"),
                    friends("madhu"),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  print("Pushed");
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => der4()
                          //subscriptionscreen(),
                          ));
                },
                child: Row(
                  children: [
                    Container(
                      child: Text(
                        "Subscription",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.grey[100],
                      size: 20,
                    )
                  ],
                ),
              ),
              Container(
                height: 170,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(right: 8, bottom: 8, top: 4),
                  children: <Widget>[
                    subscription_widget("Demo Name", true),
                    subscription_widget("ashu patil", true),
                    subscription_widget("rishav ", false),
                    subscription_widget("kunal", true),
                    subscription_widget("kumar", false),
                    subscription_widget("vipul", true),
                    subscription_widget("vipul23", false),
                  ],
                ),
              ),
              SizedBox(
                height: 4,
              ),
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
                    forYou_widget("Shubhi kahtri", true),
                    forYou_widget("Shubhi kahtri", false),
                    forYou_widget("Shubhi kahtri", true),
                    forYou_widget("Shubhi kahtri", false),
                    forYou_widget("Shubhi kahtri", true),
                    forYou_widget("Shubhi kahtri", false),
                    forYou_widget("Shubhi kahtri", false),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
