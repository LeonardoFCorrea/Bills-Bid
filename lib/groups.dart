import 'package:bills_bid/createGroup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'components/group-list.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:simple_speed_dial/simple_speed_dial.dart';

class GroupsPage extends StatefulWidget {
  const GroupsPage({Key? key}) : super(key: key);

  @override
  State<GroupsPage> createState() => _GroupsState();
}

String Uid = FirebaseAuth.instance.currentUser!.uid;
String Code = '';

_DeleteGroup(String Code) async {
  String DocId = '';
  final snapshot = await FirebaseFirestore.instance
      .collection('Groups')
      .where('GroupID', isEqualTo: Code)
      .get();
  List docs = snapshot.docs;
  docs.forEach((doc) async {
    DocId = doc.id;
    if (doc['Adm'] == Uid) {
      final snap = await FirebaseFirestore.instance
          .collection('Groups')
          .doc(DocId)
          .delete();
    } else {
      print('User is not the owner of the Group!');
    }
  });
}

/*_AddMemberArray(String Code) async {
  Map<String, dynamic> someData = {
    "Members": Uid,
  };
  String DocId = "";
  QuerySnapshot snapshot = await FirebaseFirestore.instance
      .collection('Groups')
      .where('GroupID', isEqualTo: Code)
      .get();
  List docs = snapshot.docs;
  docs.forEach((doc) {
    DocId = doc.id.toString();
  });
  CollectionReference users = FirebaseFirestore.instance.collection('Groups');
  Future<void> updateUser() {
    return users
        .doc(DocId)
        .update({'Members': someData})
        .then((value) => print("Field Updated!"))
        .catchError((error) => print("Failed to update user: $error"));
  }

  updateUser();
  print("Doc ID Srt = " + DocId);
}*/

_AddMember(String Code) async {
  String DocId = "";
  QuerySnapshot snapshot = await FirebaseFirestore.instance
      .collection('Groups')
      .where('GroupID', isEqualTo: Code)
      .get();
  List docs = snapshot.docs;
  docs.forEach((doc) {
    DocId = doc.id;
  });
  CollectionReference users = FirebaseFirestore.instance.collection('Groups');
  Future<void> updateUser() {
    return users
        .doc(DocId)
        .update({'Members': Uid})
        .then((value) => print("Field Updated!"))
        .catchError((error) => print("Failed to update user: $error"));
  }

  updateUser();
}

_searchDocsWithUid() async {
  Future getData() async {
    QuerySnapshot snapshot =
        await FirebaseFirestore.instance.collection('Groups').get();
    List docs = snapshot.docs;
    docs.asMap().forEach((index, doc) {
      if (doc['Members'].contains(Uid)) {
        GroupData.DocId = doc.id;
        print('Doc' + '[' + index.toString() + '] = ' + GroupData.DocId);
      }
    });
  }

  getData();
}

final snackBar = SnackBar(
  content: const Text('Your are not the owner of the group'),
  action: SnackBarAction(
    label: "",
    onPressed: () {},
  ),
);

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
                          onPressed: () {
                            _searchDocsWithUid();
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 630,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(26),
                        topRight: Radius.circular(26),
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Padding(
                          padding: EdgeInsets.only(top: 0),
                          child: Column(
                            children: [
                              GroupItem(),
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
            child: Icon(CupertinoIcons.delete_right_fill),
            foregroundColor: Colors.white,
            backgroundColor: Color(0xff7BC144),
            label: 'Remove a Group',
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
                    child: TextField(
                      onChanged: (value) {
                        Code = value;
                      },
                    ),
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
                      onPressed: () {
                        _DeleteGroup(Code);
                      },
                      child: Text(
                        'Remove',
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
            child: Icon(CupertinoIcons.arrow_right),
            foregroundColor: Colors.white,
            backgroundColor: Color(0xff7BC144),
            label: 'Join Group',
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
                    child: TextField(
                      onChanged: (value) {
                        Code = value;
                      },
                    ),
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
                      onPressed: () {
                        _AddMember(Code);
                        //_DeleteGroup(Code);
                        //_AddMemberArray(Code);
                        //_AddMemberConcatenado(Code);
                      },
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
                    builder: (context) => const createGroupPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
