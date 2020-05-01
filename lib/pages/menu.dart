import 'package:flutter/material.dart';
import 'package:yoega/common/menu_item.dart';
import 'package:yoega/pages/about_us.dart';
import 'package:yoega/pages/home.dart';
import 'package:yoega/pages/logout.dart';
import 'package:yoega/pages/notification_settings.dart';
import 'package:yoega/pages/user_profile.dart';

import 'event_dashboard.dart';

//import 'package:yoega/bloc/navigation_bloc/navigation_bloc.dart';
class MenuPage extends StatefulWidget{
  final TabController tabController;
  MenuPage({this.tabController});
  @override
  _MenuPageState createState() => new _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
          children: <Widget>[
      Expanded(
      child: Container(
      color: Colors.white70,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          ListTile(
            title: Text(
              "Username",
              style: TextStyle(color: Colors.black54, fontSize: 22, fontWeight: FontWeight.w800),
            ),
            subtitle: Text(
              "Name",
              style: TextStyle(
                color: Colors.black54,
                fontSize: 15,
              ),
            ),
            leading: CircleAvatar(
              child: Icon(
                Icons.perm_identity, //Get image of the user
                color: Colors.black54,
              ),
              radius: 40,
              //make this tapable
            ),
          ),
          Divider(
            height: 30,
            thickness: 0.5,
            color: Colors.black54.withOpacity(0.3),
            indent: 32,
            endIndent: 32,
          ),

          MenuItem(
            icon: Icons.person,
            title: "User Profile",
            fontSize: 18,
            boxSize: 20,
            iconSize: 25,
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => UserPage()));
            },
          ),

          // Make this available only if user is hosting an event
          MenuItem(
            icon: Icons.dashboard,
            title: "Dashboard",
            fontSize: 18,
            boxSize: 20,
            iconSize: 25,
            onTap: () {
              widget.tabController.animateTo(2);
            },
          ),
          MenuItem(
            icon: Icons.add_box,
            title: "Register an Event",
            fontSize: 18,
            boxSize: 20,
            iconSize: 25,
            onTap: () {
              widget.tabController.animateTo(1);
            },
          ),
          Divider(
            height: 30,
            thickness: 0.5,
            color: Colors.black54.withOpacity(0.3),
            indent: 32,
            endIndent: 32,
          ),
          MenuItem(
            icon: Icons.important_devices,
            title: "About Us",
            fontSize: 18,
            boxSize: 20,
            iconSize: 25,
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => AboutUsPage()));
            },
          ),
          MenuItem(
            icon: Icons.settings,
            title: "Notification Settings",
            fontSize: 18,
            boxSize: 20,
            iconSize: 25,
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => NotificationSettingsPage()));
            },
          ),
          MenuItem(
            icon: Icons.exit_to_app,
            title: "Logout",
            fontSize: 18,
            boxSize: 20,
            iconSize: 25,
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => LogOutPage()));
            },
          ),
        ],
      ),
    ),
    )
    ]
      )
    );
  }
}