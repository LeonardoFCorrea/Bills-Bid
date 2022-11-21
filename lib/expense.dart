import 'package:bills_bid/components/line.dart';
import 'package:bills_bid/components/select-members.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';

class ExpensePage extends StatefulWidget {
  const ExpensePage({Key? key}) : super(key: key);

  @override
  State<ExpensePage> createState() => _ExpenseState();
}

class _ExpenseState extends State<ExpensePage> {
  bool visibleList = false;
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
                  Padding(
                    padding: EdgeInsets.only(left: 14, top: 70),
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
                    child: Padding(
                      padding: EdgeInsets.only(top: 60),
                      child: Column(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 82, right: 82),
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintStyle: TextStyle(fontSize: 18),
                                      hintText: "French Fries",
                                      prefixIcon: Icon(
                                        CupertinoIcons.chat_bubble_text_fill,
                                        size: 25,
                                      )),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 82, right: 82),
                                child: TextField(
                                  inputFormatters: [
                                    CurrencyTextInputFormatter(
                                        symbol: "",
                                        decimalDigits: 2,
                                        locale: 'br')
                                  ],
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    hintText: "30",
                                    hintStyle: TextStyle(fontSize: 20),
                                    prefixIcon: Icon(
                                      CupertinoIcons.money_dollar,
                                      size: 30,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 38,
                          ),
                          Line(width: 400),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            child: Material(
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    visibleList = true;
                                  });
                                },
                                child: Container(
                                  height: 70,
                                  width: 345,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
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
                                    padding: EdgeInsets.only(left: 15),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Image.asset(
                                              "images/grupo-teste.png",
                                              width: 50,
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 18),
                                              child: Text(
                                                "Select Members",
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Visibility(
                            visible: visibleList,
                            child: Column(
                              children: [
                                SelectMembers(nome: "Leo"),
                                SelectMembers(nome: "Leo"),
                                SelectMembers(nome: "Leo"),
                                SelectMembers(nome: "Leo"),
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
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            child: const Text(
                              "CREATE EXPENSE",
                              style: TextStyle(
                                fontFamily: "Arial",
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
