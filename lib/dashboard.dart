import 'package:bills_bid/home.dart';
import 'package:bills_bid/login.dart';
import 'package:bills_bid/register.dart';
import 'package:bills_bid/resetPassword.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardState();
}

class _DashboardState extends State<DashboardPage> {
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
                      padding: EdgeInsets.only(
                          left: 13, right: 13, top: 5, bottom: 5),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'YOUR BALANCE',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                            Container(
                              child: RichText(
                                text: TextSpan(
                                    text: '\$',
                                    children: [
                                      TextSpan(
                                          text: '135 000', style: TextStyle()),
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
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.rightToLeftWithFade,
                          duration: Duration(milliseconds: 550),
                          child: DashboardPage(),
                          childCurrent: DashboardPage(),
                        ),
                      );
                    },
                    child: Container(
                      height: 180,
                      width: 180,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFF7ED936),
                            width: 5,
                          ),
                          borderRadius: BorderRadius.circular(100),
                          color: Color(0xFF607C4B)),
                      child: Padding(
                        padding: EdgeInsets.only(top: 72, left: 19, right: 19),
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
                  ),
                ),
                Container(
                  height: 300,
                  width: 395,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16, bottom: 16),
                  child: Container(
                    height: 45,
                    width: 309,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          child: Image.asset('images/groups-icon.png'),
                          onTap: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.rightToLeftWithFade,
                                duration: Duration(milliseconds: 550),
                                child: DashboardPage(),
                                childCurrent: DashboardPage(),
                              ),
                            );
                          },
                        ),
                        InkWell(
                          child: Image.asset('images/home-icon.png'),
                          onTap: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.rightToLeftWithFade,
                                duration: Duration(milliseconds: 550),
                                child: DashboardPage(),
                                childCurrent: DashboardPage(),
                              ),
                            );
                          },
                        ),
                        InkWell(
                          child: Image.asset('images/profile-icon.png'),
                          onTap: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.rightToLeftWithFade,
                                duration: Duration(milliseconds: 550),
                                child: DashboardPage(),
                                childCurrent: DashboardPage(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
