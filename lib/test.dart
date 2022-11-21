import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'components/group-list.dart';

class teste extends StatefulWidget {
  const teste({super.key});

  @override
  State<teste> createState() => _testeState();
}

class _testeState extends State<teste> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            StreamBuilder<QuerySnapshot>(
              stream:
                  FirebaseFirestore.instance.collection("Users").snapshots(),
              builder: (BuildContext context,
                  AsyncSnapshot<QuerySnapshot> snapshot) {
                final snap = snapshot.data!.docs;
                if (snapshot.hasData) {
                  return ListView.builder(
                      shrinkWrap: true,
                      primary: false,
                      itemCount: snap.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Text((snap[index]['FullName'])),
                            Text((snap[index]['BirthDate'])),
                            Text((snap[index]['EmailAdress'])),
                            Text((snap[index]['Phone'])),
                            Text("------------------------------------------")
                          ],
                        );
                      });
                } else {
                  return SizedBox();
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
