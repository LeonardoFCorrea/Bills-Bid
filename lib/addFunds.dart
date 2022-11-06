import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AddFundsPage extends StatefulWidget {
  const AddFundsPage({Key? key}) : super(key: key);

  @override
  State<AddFundsPage> createState() => _AddFundsPageState();
}

class _AddFundsPageState extends State<AddFundsPage> {
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
                      Padding(
                          padding: EdgeInsets.only(left: 250, top: 70),
                          child: IconButton(
                            icon: Icon(
                              CupertinoIcons.ellipsis_vertical,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 600,
                    width: 400,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(26),
                        topRight: Radius.circular(26),
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Container(
                            height: 81,
                            width: 278,
                            decoration: BoxDecoration(
                                color: Color(0xFF607C4B),
                                borderRadius: BorderRadius.circular(18)),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 13, right: 13, bottom: 5),
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
                                            text: '\$',
                                            children: [
                                              TextSpan(
                                                  text: '135 000',
                                                  style: TextStyle()),
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
                        Container(
                          height: 75,
                          width: 345,
                          decoration: BoxDecoration(),
                        ),
                        Row(
                          children: [],
                        )
                      ],
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
