import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Group {
  String DocId = '';
}

Group GroupData = Group();

class GroupItem extends StatelessWidget {
  String Uid = FirebaseAuth.instance.currentUser!.uid;

  /*_testeSplit() async {
    Future getData() async {
      QuerySnapshot snapshot =
          await FirebaseFirestore.instance.collection('Groups').get();
      List docs = snapshot.docs;
      docs.asMap().forEach((index, doc) {
        if (doc['Members'].contains(Uid)) {
          GroupData.DocId = doc.id;
        }
        print('DOCID = ' + GroupData.DocId);
      });
    }

    getData();
  }*/

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance
                .collection('Groups')
                .where('Members', isEqualTo: Uid)
                .snapshots(),
            builder:
                (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.hasData) {
                final snap = snapshot.data!.docs;
                print(snap);
                return ListView.builder(
                  shrinkWrap: true,
                  primary: false,
                  itemCount: snap.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 22, left: 20, right: 20),
                      child: Container(
                        height: 85,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade600,
                                spreadRadius: 1,
                                blurRadius: 5),
                            BoxShadow(
                              color: Colors.white,
                              offset: const Offset(0.0, 0.0),
                              blurRadius: 0.0,
                              spreadRadius: 0.0,
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 11),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    "images/grupo-teste.png",
                                    scale: 1.8,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 15),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        (snap[index]['GroupName']),
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        ("Code: " + snap[index]['GroupID']),
                                        style: TextStyle(
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              IconButton(
                                icon: Image.asset("images/config-icon.png"),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              } else {
                return SizedBox();
              }
            },
          )
        ],
      ),
    );
  }
}
