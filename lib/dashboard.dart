import 'package:bills_bid/addFunds.dart';
import 'package:bills_bid/components/NavigationSystem.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardState();
}

class _DashboardState extends State<DashboardPage> {
  Widget _Value(value) {
    return Padding(
      padding: EdgeInsets.only(right: 30),
      child: Text(
        value,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _ListGroups(title, description) {
    return Row(
      children: [
        Image.asset('images/green-card.png'),
        Padding(
          padding: EdgeInsets.only(left: 7),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                //'Bills',
                title,
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                //'Heimstaden SA',
                description,
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ],
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
                  height: 300,
                  width: 395,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  padding: EdgeInsets.only(left: 30, top: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '14 SEP 2022',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF5C3F06),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 21,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _ListGroups("Monsters SA", "We make people scared!"),
                          _Value('R\$ 25.000,00'),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _ListGroups("Sea Food Rest", "Food, From the Sea!"),
                          _Value('R\$ 170,00'),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _ListGroups("Walmart", "Market Spendings"),
                          _Value('R\$ 950,00'),
                        ],
                      ),
                      SizedBox(
                        height: 11,
                      ),
                      Text(
                        '14 SEP 2022',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF5C3F06),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 21,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _ListGroups("Bills", "General Bills!"),
                          _Value('R\$ 250,00'),
                        ],
                      ),
                      SizedBox(
                        height: 10,
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
