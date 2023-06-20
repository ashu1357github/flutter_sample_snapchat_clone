import 'package:flutter/material.dart';
import 'package:snpachat_application/Widgets_settings/categoryHeading_Widgets.dart';
import 'package:snpachat_application/Widgets_settings/single_items_widget.dart';
import 'package:snpachat_application/Widgets_settings/twoItems_Widgets.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white54,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Colors.green,
              )),
          title: Text(
            "Settings",
            style: TextStyle(
              fontSize: 24,
              color: Colors.green,
              fontWeight: FontWeight.w600,
            ),
          )),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              categoryHeading_Widgets(context, "MY ACCOUNT"),
              twoItems_Widgets("Name ", " Ashish patil"),
              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              Container(
                padding: EdgeInsets.only(
                  bottom: 12,
                  top: 12,
                  left: 15,
                  right: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Username",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "ashishpatil07",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[300],
                          ),
                        ),
                        Icon(
                          Icons.share,
                          color: Colors.grey[350],
                        )
                      ],
                    )
                  ],
                ),
              ),
              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              twoItems_Widgets("Birthdate", "5/08/2002"),
              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              twoItems_Widgets("Mobile Number", "75-59-10-87-32"),
              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              twoItems_Widgets("EmailID", "example@gmail.com"),

              //to do single item

              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              single_items_widget("Password"),
              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              single_items_widget("Two-Factor-Authentication"),
              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              single_items_widget("Notification"),
              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              single_items_widget("Apps from Snap"),

              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              single_items_widget("Bitmoji"),
              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              single_items_widget("Shazam"),
              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              single_items_widget("language"),

              categoryHeading_Widgets(context, "ADDITIONAL SERVICES"),
              single_items_widget("Manage"),
              categoryHeading_Widgets(context, "WHO CAN..."),
              twoItems_Widgets("Contact Me", "Everyone"),

              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              twoItems_Widgets("Use My Camera Selfie", "Only me"),
              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              single_items_widget("Send Me Notifiaction"),
              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              single_items_widget("Visit My Story"),
              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              single_items_widget("See Me iN Quick Add"),
              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              single_items_widget("See My Location"),
              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              single_items_widget("Customise Emojis"),
              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              single_items_widget("Ads"),
              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              single_items_widget("Data Saver"),

              categoryHeading_Widgets(context, "PRIVACY"),
              single_items_widget("Conversations"),
              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              single_items_widget("Clear Top Locations"),
              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              single_items_widget("Permissions"),
              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              single_items_widget("My Data"),
              categoryHeading_Widgets(context, "SUPPORT"),

              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              single_items_widget("I Have a Saftey Concern"),
              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              single_items_widget("I have a Privacy Quextion"),
              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              categoryHeading_Widgets(context, "FEEDBACK"),
              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              single_items_widget("I Spotted a Bug"),
              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              single_items_widget("I have a Suggestions"),
              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              single_items_widget("Shape to Report"),

              categoryHeading_Widgets(context, "MORE INFORMATION"),
              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              single_items_widget("privacy policy"),
              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              single_items_widget("Saftey Terms"),
              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              single_items_widget("Terms Of Service"),
              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              single_items_widget("Other Legal"),
              categoryHeading_Widgets(context, "ACCOUNT ACTIONS"),
              single_items_widget("Clear Cache"),
              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              single_items_widget("Clear Lens Data"),
              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              single_items_widget("Clear My Cameos Selfie"),
              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              single_items_widget("Blocked"),
              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              single_items_widget("Log Out"),

              Padding(
                padding: EdgeInsets.only(right: 15, left: 15),
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(4)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 4),
                        child: Text(
                          "Snapchat v11.5.0.69",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 4),
                        child: Text(
                          "Made In Los Angles",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
