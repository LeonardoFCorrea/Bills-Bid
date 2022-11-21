import 'package:bills_bid/groups.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:math';

class createGroupPage extends StatefulWidget {
  const createGroupPage({Key? key}) : super(key: key);

  @override
  State<createGroupPage> createState() => _ProfileState();
}

class _ProfileState extends State<createGroupPage> {
  String Uid = FirebaseAuth.instance.currentUser!.uid;
  //
  CollectionReference group = FirebaseFirestore.instance.collection('Groups');
  //
  String nameValue = "";
  String DescriptionValue = "";
  //

  _randomString() {
    const _chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890';
    Random _rnd = Random();

    String getRandomString(int length) =>
        String.fromCharCodes(Iterable.generate(
            length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));

    String Code = getRandomString(5);
    return Code;
  }

  Widget _CreateGroup() {
    String Code = _randomString();
    return Container(
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
                        padding: EdgeInsets.only(left: 14, top: 70, bottom: 20),
                        child: InkWell(
                          child: Padding(
                            padding: EdgeInsets.only(),
                            child: Row(
                              children: [
                                Icon(CupertinoIcons.arrow_left,
                                    color: Colors.white),
                                Text(
                                  'BACK',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ],
                  ),
                  Container(
                      height: 140,
                      width: 400,
                      decoration: BoxDecoration(
                        color: Color(0xFF559E1C),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Stack(
                            children: [
                              Image.asset("images/grupo-teste.png"),
                              IconButton(
                                icon: Image.asset("images/add-group.png"),
                                onPressed: () {},
                              )
                            ],
                          )
                        ],
                      )),
                  SizedBox(
                    height: 72,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 16, right: 16),
                    height: 442,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        TextField(
                          onChanged: (value) {
                            nameValue = value;
                          },
                          decoration: InputDecoration(
                            labelText: "Group Name",
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            labelStyle: TextStyle(),
                            icon: Icon(CupertinoIcons.group, size: 30),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xff7BC144),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff7BC144)),
                            ),
                            counterStyle: TextStyle(color: Color(0xFF559E1C)),
                          ),
                          maxLines: 1,
                          maxLength: 25,
                          maxLengthEnforcement:
                              MaxLengthEnforcement.truncateAfterCompositionEnds,
                        ),
                        TextField(
                          onChanged: (value) {
                            DescriptionValue = value;
                          },
                          decoration: InputDecoration(
                            labelText: "Description",
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            icon: Icon(
                              CupertinoIcons.chat_bubble_text,
                              size: 30,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(0),
                                  topRight: Radius.circular(18),
                                  bottomLeft: Radius.circular(18),
                                  bottomRight: Radius.circular(18)),
                              borderSide: BorderSide(
                                color: Color(0xFF7BC144),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(0),
                                  topRight: Radius.circular(18),
                                  bottomLeft: Radius.circular(18),
                                  bottomRight: Radius.circular(18)),
                              borderSide: BorderSide(
                                color: Color(0xFF7BC144),
                              ),
                            ),
                            counterStyle: TextStyle(color: Color(0xFF559E1C)),
                          ),
                          maxLines: 5,
                          maxLength: 255,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 61,
                          width: 300,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.shade600,
                                    spreadRadius: 1,
                                    blurRadius: 15),
                                BoxShadow(
                                  color: Colors.white,
                                  offset: const Offset(0.0, 0.0),
                                  blurRadius: 0.0,
                                  spreadRadius: 0.0,
                                ),
                              ]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    tapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    primary: Color(0xff7BC144),
                                    fixedSize: const Size(130, 23),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15))),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const GroupsPage()),
                                  );
                                },
                                child: const Text(
                                  "CODE GENERATE",
                                  style: TextStyle(
                                    fontFamily: "Arial",
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Text(
                                Code,
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                              Icon(
                                CupertinoIcons.doc_on_doc_fill,
                                color: Color(0xff57902A),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              primary: Color(0xff7BC144),
                              fixedSize: const Size(267, 43),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          onPressed: () async {
                            await group.add({
                              'GroupName': nameValue,
                              "Description": DescriptionValue,
                              'Adm': Uid,
                              'Members': (Uid),
                              'GroupID': Code
                            }).then((value) => print("GRUPO CRIADO"));
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const GroupsPage()),
                            );
                          },
                          child: const Text(
                            "CREATE GROUP",
                            style: TextStyle(
                              fontFamily: "Arial",
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _CreateGroup(),
    );
  }
}
