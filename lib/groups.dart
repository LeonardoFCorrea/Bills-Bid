import 'package:bills_bid/createGroup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:simple_speed_dial/simple_speed_dial.dart';

import 'components/group-list.dart';

class GroupsPage extends StatefulWidget {
  const GroupsPage({Key? key}) : super(key: key);

  @override
  State<GroupsPage> createState() => _GroupsState();
}

class _GroupsState extends State<GroupsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.maxFinite,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF7BC144),
              Color(0xFF72CB2C),
              Color(0xFF7BC144),
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(0),
            child: Center(
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 320, top: 70),
                        child: IconButton(
                          icon: Image.asset("images/search.png"),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 605,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(26),
                        topRight: Radius.circular(26),
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Column(
                            children: [
                              GroupItem(groupName: "Cantalero", members: 3),
                              GroupItem(groupName: "Cantalero", members: 3),
                            ],
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: SpeedDial(
        child: Icon(Icons.group),
        closedForegroundColor: Colors.white,
        openForegroundColor: Colors.white,
        closedBackgroundColor: Color(0xff559E1C),
        openBackgroundColor: Color(0xff559E1C),
        labelsBackgroundColor: Colors.white,
        speedDialChildren: <SpeedDialChild>[
          SpeedDialChild(
            child: Icon(CupertinoIcons.arrow_right),
            foregroundColor: Colors.white,
            backgroundColor: Color(0xff7BC144),
            label: 'Join a Group',
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  backgroundColor: Colors.white,
                  contentPadding: EdgeInsets.all(0),
                  buttonPadding: EdgeInsets.all(0),
                  title: Text(
                    "Group Code:",
                    style: TextStyle(
                      color: Color(0xff7BC144),
                    ),
                  ),
                  content: Padding(
                    padding: EdgeInsets.only(left: 60, right: 60),
                    child: TextField(),
                  ),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'Cancel'),
                      child: Text(
                        'Cancel',
                        style: TextStyle(
                          color: Color(0xff7BC144),
                          fontSize: 14,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'Join'),
                      child: Text(
                        'Join',
                        style: TextStyle(
                          color: Color(0xff7BC144),
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
            closeSpeedDialOnPressed: false,
          ),
          SpeedDialChild(
            child: Icon(Icons.group_add),
            foregroundColor: Colors.white,
            backgroundColor: Color(0xff7BC144),
            label: 'Create a Group',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const CreateGroupPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
