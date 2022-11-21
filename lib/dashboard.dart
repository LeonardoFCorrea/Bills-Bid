import 'package:bills_bid/addFunds.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:bills_bid/components/NavigationSystem.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardState();
}

class _DashboardState extends State<DashboardPage> {
  String Uid = FirebaseAuth.instance.currentUser!.uid;
  Widget _ListExpenses() {
    return SingleChildScrollView(
      padding: EdgeInsets.all(0),
      child: Column(
        children: [
          StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance
                .collection('Expenses')
                .where("Members", isEqualTo: Uid)
                .snapshots(),
            builder:
                (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.hasData) {
                final snap = snapshot.data!.docs;
                return ListView.builder(
                  shrinkWrap: true,
                  primary: false,
                  itemCount: snap.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(top: 0, bottom: 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset('images/green-card.png'),
                              Padding(
                                padding: EdgeInsets.only(left: 7, top: 3),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      (snap[index]['ExpenseName']),
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      (snap[index]['GroupName']),
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 30),
                            child: Row(
                              children: [
                                Text("R\$"),
                                Padding(
                                  padding: EdgeInsets.only(left: 7),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        (snap[index]['ExpenseValue']),
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              } else {
                return SizedBox(
                  height: 0,
                );
              }
            },
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.maxFinite,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Color(0xFF7ED936),
        Color(0xFF7BC144),
      ])),
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(0),
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 70),
                  child: Container(
                    height: 81,
                    width: 278,
                    decoration: BoxDecoration(
                        color: Color(0xFF607C4B),
                        borderRadius: BorderRadius.circular(18)),
                    child: Padding(
                      padding: EdgeInsets.only(left: 13, right: 13, bottom: 5),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Text(
                                'YOUR BALANCE',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(
                              child: RichText(
                                text: TextSpan(
                                    text: 'R\$',
                                    children: [
                                      TextSpan(
                                          text: '135.00', style: TextStyle()),
                                    ],
                                    style: TextStyle(
                                      fontSize: 45,
                                      fontWeight: FontWeight.bold,
                                    )),
                              ),
                            )
                          ]),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 24.24, bottom: 16),
                  child: Text(
                    'YOUR INVESTMENT',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 34),
                  child: Container(
                    child: Material(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.rightToLeftWithFade,
                              duration: Duration(milliseconds: 550),
                              child: AddFundsPage(),
                              childCurrent: DashboardPage(),
                            ),
                          );
                        },
                        child: Container(
                          height: 180,
                          width: 180,
                          child: Padding(
                            padding:
                                EdgeInsets.only(top: 74, left: 24, right: 19),
                            child: Text(
                              'ADD FUNDS',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              ),
                            ),
                          ),
                        ),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      color: Colors.transparent,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color(0xFF607C4B),
                      border: Border.all(
                        color: Color(0xFF7ED936),
                        width: 5,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 332,
                  width: 395,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  padding: EdgeInsets.only(left: 30, top: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Last Expenses:',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF5C3F06),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      _ListExpenses(),
                      SizedBox(
                        height: 21,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
