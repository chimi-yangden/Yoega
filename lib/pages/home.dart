
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:yoega/pages/event_dashboard.dart';
import 'package:yoega/pages/event_register.dart';
import 'package:yoega/pages/notifications.dart';

import 'menu.dart';
//import 'package:yoega/bloc/navigation_bloc/navigation_bloc.dart';

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => new _HomePageState();
}
class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  TabController controller;
  @override
  void initState(){
    super.initState();
    controller = new TabController(length: 5, vsync: this);
  }

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.grey,
      child: DefaultTabController(
          length: 5,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.teal,
              title: Text("Yoega", style: TextStyle(color: Colors.white)),
              bottom: TabBar(
                controller: controller,
                tabs: <Widget>[
                  Tab(child: Icon(Icons.fiber_new, color: Colors.white)),
                  Tab(icon:Icon(Icons.add_box, color: Colors.white)),
                  Tab(icon:Icon(Icons.dashboard, color: Colors.white)),
                  Tab(icon:Icon(Icons.notifications, color: Colors.white)),
                  Tab(icon:Icon(Icons.menu, color: Colors.white)),
                ],
              ),
            ),
            body: new TabBarView(
              controller: controller,
              children: <Widget>[
                ListView.builder(
                  itemCount: 17,
                  itemBuilder: (context, index)=>CardItem(),
                ),
                RegisterEventPage(),
                EventDashboardPage(),
                NotificationsPage(),
                MenuPage(tabController: controller),
              ]
            )
         )
      )
    )
    );
  }
}

class CardItem extends StatelessWidget {
  const CardItem({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
      margin: EdgeInsets.fromLTRB(0, 5, 0, 15),
    child:Container(
      height: 350.0,
      color: Colors.white,
      child: Column(
        children: <Widget>[
          ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage('assets/default_pro_pic.png'),),
            title: Text("Event Title"),
            subtitle: Text("Date"),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://cdn.arstechnica.net/wp-content/uploads/2013/05/donate_blood_rotator.jpg"),
                  fit: BoxFit.cover,
                )
              ),
            ),
          ),
          SizedBox(height: 14.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.favorite_border, color: Colors.black,),
                    onPressed: (){
                      //toggle like
                  },),
                 // SizedBox(width: 5.0),
                ],
              ),
              Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.pan_tool, color: Colors.black,),
                    onPressed: (){
                      //toggle like
                    },),
                  //SizedBox(width: 5.0),
                  Container(
                    width: 85,
                    child: FlatButton(
                      child: Text("Volunteer", style: TextStyle(fontSize: 12,color: Colors.black),),
                    onPressed: (){
                      //toggle like
                    },
                    )
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.person_pin_circle, color: Colors.black,),
                    onPressed: (){
                      //toggle like
                    },),
                  //SizedBox(width: 5.0),
                  Container(
                    width: 93,
                    child: FlatButton(
                      child: Text("Participate", style: TextStyle(fontSize: 12,color: Colors.black),),
                    onPressed: (){
                      //toggle like
                    },
                    )
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.comment, color: Colors.black,),
                    onPressed: (){
                      //toggle like
                    },),
                 // SizedBox(width: 5.0),
                ],
              )
            ],
      ),
          SizedBox(height: 14.0),

        ],
              )
            )
    ),onTap: (){},
    );
  }
}