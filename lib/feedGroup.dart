import 'dart:ffi';

import 'package:bills_bid/expense.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FeedGroup extends StatefulWidget {
  const FeedGroup({Key? key}) : super(key: key);

  @override
  State<FeedGroup> createState() => _FeedGroupState();
}

class _FeedGroupState extends State<FeedGroup> {
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
                        padding: EdgeInsets.only(left: 14, top: 70, bottom: 20),
                        child: InkWell(
                          child: Padding(
                            padding: EdgeInsets.only(),
                            child: Row(
                              children: [
                                Icon(CupertinoIcons.arrow_left,
                                    color: Colors.white),
                                Container(
                                  height: 65,
                                  width: 65,
                                  child: Image.asset("images/grupo-teste.png"),
                                ),
                                Padding(padding: EdgeInsets.only(left: 5)),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Members',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 17,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Text(
                                      'You, Matheus and Pedro',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(padding: EdgeInsets.only(left: 100)),
                                Icon(
                                  CupertinoIcons.ellipsis_vertical,
                                  color: Colors.white,
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
                  SizedBox(height: 0),
                  Container(
                    padding: EdgeInsets.only(left: 16, right: 16),
                    height: 613,
                    width: 410,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(26),
                        topRight: Radius.circular(26),
                      ),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 18,
                          width: 75,
                          padding: EdgeInsets.only(top: 2, bottom: 2, left: 6),
                          decoration: BoxDecoration(
                            color: Color(0xff6D6D6D).withOpacity(0.5),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Text(
                            "21/11/2022",
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                        SizedBox(
                          height: 35,
                        ),
                        Container(
                          width: 284,
                          height: 80,
                          padding: EdgeInsets.only(
                              left: 13, right: 13, top: 4, bottom: 4),
                          decoration: BoxDecoration(
                            color: Color(0xffD8E9CC).withOpacity(0.65),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: RichText(
                            text: TextSpan(
                              text: "Leonardo ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 15,
                              ),
                              children: [
                                TextSpan(
                                  text:
                                      "paid for an item: Salgados; Total amount: BRL 30,00; Split between: Pedro, William and Matheus. Value = BRL 10.00 each.",
                                  style:
                                      TextStyle(fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: 18,
                          width: 75,
                          padding: EdgeInsets.only(top: 2, bottom: 2, left: 6),
                          decoration: BoxDecoration(
                            color: Color(0xff6D6D6D).withOpacity(0.5),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Text(
                            "21/11/2022",
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                        SizedBox(
                          height: 35,
                        ),
                        Container(
                          width: 250,
                          height: 35,
                          padding: EdgeInsets.only(
                              left: 50, right: 0, top: 7, bottom: 0),
                          decoration: BoxDecoration(
                            color: Color(0xffD8E9CC).withOpacity(0.65),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: RichText(
                            text: TextSpan(
                              text: "Matheus ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xff57902A),
                                fontSize: 15,
                              ),
                              children: [
                                TextSpan(
                                  text: " paid R\$10,00.",
                                  style:
                                      TextStyle(fontWeight: FontWeight.normal),
                                ),
                              ],
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
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ExpensePage()),
          );
        },
        backgroundColor: Color(0xff559E1C),
        child: const Icon(
          CupertinoIcons.money_dollar_circle,
          size: 38,
        ),
      ),
    );
  }
}
