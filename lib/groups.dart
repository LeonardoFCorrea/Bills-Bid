import 'package:bills_bid/createGroup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const createGroupPage()),
          );
        },
        backgroundColor: Color(0xff7BC144),
        child: Icon(Icons.group_add_outlined, color: Colors.white),
      ),
    );
  }
}
