import 'package:bills_bid/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AddFundsPage extends StatefulWidget {
  const AddFundsPage({Key? key}) : super(key: key);

  @override
  State<AddFundsPage> createState() => _AddFundsPageState();
}

class _AddFundsPageState extends State<AddFundsPage> {
  // bool visible = false;
  bool isToggled = false;

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
                        Container(
                          height: 81,
                          width: 400,
                          decoration: BoxDecoration(
                            color: Color(0xFF607C4B),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
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
                                          text: '135 000', style: TextStyle()),
                                    ],
                                    style: TextStyle(
                                      fontSize: 45,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 73,
                        ),
                        Container(
                          height: 75,
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
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 15),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          "images/pix.png",
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 18),
                                          child: Text(
                                            "PIX",
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 20),
                                    child: Icon(CupertinoIcons.arrow_right),
                                  )
                                ],
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xffCFCFCF).withOpacity(0.7),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              Text(
                                "Future Functionality",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Container(
                          child: Material(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  isToggled = true;
                                });
                              },
                              child: Container(
                                height: 75,
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
                                          Image.asset("images/wallet.png"),
                                          Padding(
                                            padding: EdgeInsets.only(left: 18),
                                            child: Text("DEBIT CARD"),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(right: 20),
                                        child: Icon(CupertinoIcons.arrow_right),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Visibility(
                          visible: isToggled,
                          child: Container(
                            height: 50,
                            width: 310,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(3),
                                topRight: Radius.circular(3),
                                bottomLeft: Radius.circular(3),
                                bottomRight: Radius.circular(3),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade600,
                                  offset: Offset(0, 3.8),
                                  blurRadius: 3,
                                  spreadRadius: 1,
                                ),
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.wallet_outlined),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "ADD FUNDS",
                                      style: TextStyle(
                                        color: Color(0xff57902A),
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "R\$",
                                      style: TextStyle(
                                        color: Color(0xff57902A),
                                        fontSize: 16,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    SizedBox(
                                      width: 130,
                                      height: 25,
                                      child: TextField(
                                        keyboardType: TextInputType.number,
                                        style: TextStyle(
                                            color: Color(0xff57902A),
                                            fontSize: 16),
                                        decoration: InputDecoration(
                                          border: UnderlineInputBorder(),
                                          counterText: "",
                                        ),
                                        maxLength: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 131,
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
                            "ADD FUNDS",
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
